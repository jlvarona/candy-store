package com.atf.candystore.service

import javax.jws.WebMethod
import javax.jws.WebParam
import javax.jws.WebResult

import org.grails.cxf.utils.GrailsCxfEndpoint

import com.atf.candystore.CandyOrder
import com.atf.candystore.pogo.OrderPogo


@GrailsCxfEndpoint(address = "/i/love/turtles/v1/zombie")
class CandyOrderSOAPService {

	@WebMethod
	@WebResult(name="orderResponse")
	def String createCandyOrder(@WebParam(name="orderRequest") String orderPogo)
	{
		return param.toString()
	}
/*	@WebMethod
	@WebResult(name="orderResponse")	
    def CandyOrder createCandyOrder(@WebParam(name="orderRequest") OrderPogo orderPogo) {
		return CandyOrderService.createOrder(orderPogo)		
    }
    */
}
