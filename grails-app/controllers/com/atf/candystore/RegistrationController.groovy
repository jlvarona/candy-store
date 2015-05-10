package com.atf.candystore



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegistrationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def candyTypes = ["One", "Two", "Three", "Four", "Five"]//CandyType.list()
	
//    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond Registration.list(params), model:[registrationInstanceCount: Registration.count()]
//    }

    def show(Registration registrationInstance) {
        respond registrationInstance
    }

    def create() {
        respond new Registration(params)
    }

    @Transactional
    def save(Registration registrationInstance) {
        if (registrationInstance == null) {
            notFound()
            return
        }

        if (registrationInstance.hasErrors()) {
            respond registrationInstance.errors, view:'create'
            return
        }

        registrationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registration.label', default: 'Registration'), registrationInstance.id])
                redirect registrationInstance
            }
            '*' { respond registrationInstance, [status: CREATED] }
        }
    }

//    def edit(Registration registrationInstance) {
//        respond registrationInstance
//    }
//
//    @Transactional
//    def update(Registration registrationInstance) {
//        if (registrationInstance == null) {
//            notFound()
//            return
//        }
//
//        if (registrationInstance.hasErrors()) {
//            respond registrationInstance.errors, view:'edit'
//            return
//        }
//
//        registrationInstance.save flush:true
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.updated.message', args: [message(code: 'Registration.label', default: 'Registration'), registrationInstance.id])
//                redirect registrationInstance
//            }
//            '*'{ respond registrationInstance, [status: OK] }
//        }
//    }
//
//    @Transactional
//    def delete(Registration registrationInstance) {
//
//        if (registrationInstance == null) {
//            notFound()
//            return
//        }
//
//        registrationInstance.delete flush:true
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Registration.label', default: 'Registration'), registrationInstance.id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
//    }
//
//    protected void notFound() {
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), params.id])
//                redirect action: "index", method: "GET"
//            }
//            '*'{ render status: NOT_FOUND }
//        }
//    }
}
