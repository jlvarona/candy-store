package com.atf.candystore



import static org.springframework.http.HttpStatus.*
import grails.rest.RestfulController;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandyOrderLineController   {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CandyOrderLine.list(params), model:[candyOrderLineInstanceCount: CandyOrderLine.count()]
    }

    def show(CandyOrderLine candyOrderLineInstance) {
        respond candyOrderLineInstance
    }

    def create() {
        respond new CandyOrderLine(params)
    }

    @Transactional
    def save(CandyOrderLine candyOrderLineInstance) {
        if (candyOrderLineInstance == null) {
            notFound()
            return
        }

        if (candyOrderLineInstance.hasErrors()) {
            respond candyOrderLineInstance.errors, view:'create'
            return
        }

        candyOrderLineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candyOrderLine.label', default: 'CandyOrderLine'), candyOrderLineInstance.id])
                redirect candyOrderLineInstance
            }
            '*' { respond candyOrderLineInstance, [status: CREATED] }
        }
    }

    def edit(CandyOrderLine candyOrderLineInstance) {
        respond candyOrderLineInstance
    }

    @Transactional
    def update(CandyOrderLine candyOrderLineInstance) {
        if (candyOrderLineInstance == null) {
            notFound()
            return
        }

        if (candyOrderLineInstance.hasErrors()) {
            respond candyOrderLineInstance.errors, view:'edit'
            return
        }

        candyOrderLineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CandyOrderLine.label', default: 'CandyOrderLine'), candyOrderLineInstance.id])
                redirect candyOrderLineInstance
            }
            '*'{ respond candyOrderLineInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CandyOrderLine candyOrderLineInstance) {

        if (candyOrderLineInstance == null) {
            notFound()
            return
        }

        candyOrderLineInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CandyOrderLine.label', default: 'CandyOrderLine'), candyOrderLineInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candyOrderLine.label', default: 'CandyOrderLine'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
