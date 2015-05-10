package com.atf.candystore

import javax.xml.bind.annotation.XmlAccessType
import javax.xml.bind.annotation.XmlAccessorType
import javax.xml.bind.annotation.XmlElement

@XmlAccessorType(XmlAccessType.NONE)
class CandyOrderLine {
	static belongsTo = [order : CandyOrder]
	
	@XmlElement
	Candy candy;
	
	@XmlElement
	long quantity;
	
	@XmlElement
	BigDecimal priceXUnit;
	
	@XmlElement
	BigDecimal total;

    static constraints = {
		quantity blank:false
		priceXUnit blank:false, format: "#0.00"
		total blank:false, format: "#0.00"
    }
}
