/**
 * 
 */
package com.atf.candystore

/**
 * @author Jorge
 *
 */
class MainController {
	def index() {
		render (view: 'home.gsp')
	}
	
	def home() {}
	
	def contact() {
		respond new Contact(params)
	}
	
	def saveContact(Contact contactInstance)
	{
		if (contactInstance == null) {
			notFound()
			return
		}

		if (contactInstance.hasErrors()) {
			respond contactInstance.errors, view:'contact'
			return
		}

		contactInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'candy.label', default: 'Candy'), contactInstance.id])
				redirect contactInstance
			}
			'*' { respond contactInstance, [status: CREATED] }
		}

	}

}
