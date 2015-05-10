package com.atf.candystore

import javax.xml.bind.annotation.XmlAccessType
import javax.xml.bind.annotation.XmlAccessorType
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement

@XmlAccessorType(XmlAccessType.NONE)
class CandyOrder {
	
	static hasMany = [orderLines : CandyOrderLine]
	
	@XmlAttribute
	long id
	
	@XmlElement
	BigDecimal orderTotal;
	
	@XmlElement
	List<CandyOrderLine> orderLines;
	
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
