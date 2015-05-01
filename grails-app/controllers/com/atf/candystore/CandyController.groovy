package com.atf.candystore



import static org.springframework.http.HttpStatus.*
import grails.rest.RestfulController;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Candy.list(params), model:[candyInstanceCount: Candy.count()]
    }

    def show(Candy candyInstance) {
        respond candyInstance
    }

    def create() {
        respond new Candy(params)
    }

    @Transactional
    def save(Candy candyInstance) {
        if (candyInstance == null) {
            notFound()
            return
        }

        if (candyInstance.hasErrors()) {
            respond candyInstance.errors, view:'create'
            return
        }

        candyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candy.label', default: 'Candy'), candyInstance.id])
                redirect candyInstance
            }
            '*' { respond candyInstance, [status: CREATED] }
        }
    }

    def edit(Candy candyInstance) {
        respond candyInstance
    }

    @Transactional
    def update(Candy candyInstance) {
        if (candyInstance == null) {
            notFound()
            return
        }

        if (candyInstance.hasErrors()) {
            respond candyInstance.errors, view:'edit'
            return
        }

        candyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Candy.label', default: 'Candy'), candyInstance.id])
                redirect candyInstance
            }
            '*'{ respond candyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Candy candyInstance) {

        if (candyInstance == null) {
            notFound()
            return
        }

        candyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Candy.label', default: 'Candy'), candyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candy.label', default: 'Candy'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
