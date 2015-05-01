package com.atf.candystore

import com.sun.corba.se.spi.orb.OperationFactory.SequenceAction;

class CandyOrder {
	static hasMany = [orderLine : CandyOrderLine]
//	long orderNumber; 
	BigDecimal orderTotal;
	
	static constraints = {
//		orderNumber blank:false, unique:true
		orderTotal nullable:true
	}
/*	
	static mapping = {
		table 'candy_order'
		orderNumber generator: 'sequence', params: [sequence: 'order_number_seq']
	}
*/
}
