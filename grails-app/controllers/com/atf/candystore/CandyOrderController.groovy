package com.atf.candystore



import static org.springframework.http.HttpStatus.*
import grails.rest.RestfulController;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandyOrderController  {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CandyOrder.list(params), model:[candyOrderInstanceCount: CandyOrder.count()]
    }

    def show(CandyOrder candyOrderInstance) {
        respond candyOrderInstance
    }

    def create() {
        respond new CandyOrder(params)
    }

    @Transactional
    def save(CandyOrder candyOrderInstance) {
        if (candyOrderInstance == null) {
            notFound()
            return
        }

        if (candyOrderInstance.hasErrors()) {
            respond candyOrderInstance.errors, view:'create'
            return
        }

        candyOrderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candyOrder.label', default: 'CandyOrder'), candyOrderInstance.id])
                redirect candyOrderInstance
            }
            '*' { respond candyOrderInstance, [status: CREATED] }
        }
    }

    def edit(CandyOrder candyOrderInstance) {
        respond candyOrderInstance
    }

    @Transactional
    def update(CandyOrder candyOrderInstance) {
        if (candyOrderInstance == null) {
            notFound()
            return
        }

        if (candyOrderInstance.hasErrors()) {
            respond candyOrderInstance.errors, view:'edit'
            return
        }

        candyOrderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CandyOrder.label', default: 'CandyOrder'), candyOrderInstance.id])
                redirect candyOrderInstance
            }
            '*'{ respond candyOrderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CandyOrder candyOrderInstance) {

        if (candyOrderInstance == null) {
            notFound()
            return
        }

        candyOrderInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CandyOrder.label', default: 'CandyOrder'), candyOrderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candyOrder.label', default: 'CandyOrder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
