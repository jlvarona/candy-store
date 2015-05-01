package com.atf.candystore

import com.atf.candystore.pogo.OrderPogo;

import grails.converters.JSON
import grails.rest.RestfulController
import grails.transaction.Transactional;

class CandyOrderRESTController extends RestfulController {
	static responseFormats = ['json', 'xml']
	
	static allowedMethods = [orderCandy: "POST", cancelOrder: "POST"]

	def candyOrderService
	
    def index(Integer max) 
	{
		params.max = Math.min(max ?: 10, 100)
		respond CandyOrder.list(params), model:[candyOrderInstanceCount: CandyOrder.count()]
	}
	
	@Transactional
	def orderCandy()
	{
		try
		{
			def orderP = new OrderPogo(request.JSON)
			def orderResponse = candyOrderService.createOrder(orderP)
			render orderResponse as JSON
		}
		catch (e)
		{
			render(status: 409, 'Not enough quantity - ' + e.message) as JSON
		}
	}
		
	def getOrder(CandyOrder candyOrderInstance)
	{ 
		println "testing " 
		respond candyOrderInstance
	}

	def cancelOrder(CandyOrder candyOrderInstance)
	{
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
	
	def show(CandyOrder candyOrderInstance)
	{
		respond candyOrderInstance
	}
	
	
}
