package com.atf.candystore.service

import javax.jws.WebMethod
import javax.jws.WebParam
import javax.jws.WebResult

import org.grails.cxf.utils.GrailsCxfEndpoint

import com.atf.candystore.CandyOrder;
import com.atf.candystore.pogo.OrderLinePogo
import com.atf.candystore.pogo.OrderPogo


@GrailsCxfEndpoint(address = "/candyStoreOrderSOAP")
class CandyOrderSOAPService {

	def candyOrderService
	
	@WebMethod
	@WebResult(name="orderResponse")
	def CandyOrder createCandyOrder(@WebParam(name="orderRequest") OrderPogo orderPogo)
	{		
		return candyOrderService.createOrder(orderPogo)
	}
	
	@WebMethod
	@WebResult(name="responseMessage")
	def deleteCandyOrder(@WebParam(name="orderNumber") long id)
	{
		return candyOrderService.deleteOrder(id)
	}
	
/*	@WebMethod
	@WebResult(name="orderResponse")	
    def CandyOrder createCandyOrder(@WebParam(name="orderRequest") OrderPogo orderPogo) {
		return CandyOrderService.createOrder(orderPogo)		
    }
    */
}
