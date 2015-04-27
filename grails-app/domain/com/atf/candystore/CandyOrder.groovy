package com.atf.candystore

class CandyOrder {
	static hasMany = [orderLine : CandyOrderLine]
	long orderNumber; 
	BigDecimal orderTotal;
	
	static constraints = {
		orderNumber blank:false, unique:true
		orderTotal nullable:true
	}

}
