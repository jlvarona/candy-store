package com.atf.candystore.service

import grails.transaction.Transactional

import com.atf.candystore.Candy
import com.atf.candystore.CandyOrder
import com.atf.candystore.CandyOrderLine
import com.atf.candystore.pogo.OrderPogo

@Transactional
class CandyOrderService {

    def createOrder(OrderPogo orderP) {
		CandyOrder order = new CandyOrder();
		order.save()
		order.orderTotal = 0
		def lineTotal = 0
		
		orderP.getOrderLines().each {
			Candy candy = Candy.findBySku(it.sku)
			lineTotal = candy.candyPrice * it.quantity
			order.orderTotal = order.orderTotal + lineTotal
			validateQuantity(candy, it.quantity)
			new CandyOrderLine(order: order, quantity: it.quantity, priceXUnit: candy.candyPrice, total: lineTotal, candy: candy).save()			
		}
		order.save()
		return order
    }
	
	def validateQuantity(Candy candy, long quantity)
	{
		if (candy.currentQuantity >= quantity)
		{
			candy.currentQuantity = candy.currentQuantity - quantity
			candy.save()
		}
		else
		{
			throw new Exception(candy.sku + " - " + quantity + " - " + candy.currentQuantity)
		}
	}
}
