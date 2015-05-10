/**
 * 
 */
package com.atf.candystore

import javax.xml.bind.annotation.XmlAccessType
import javax.xml.bind.annotation.XmlAccessorType
import javax.xml.bind.annotation.XmlElement

/**
 * @author Jorge
 *
 */
@XmlAccessorType(XmlAccessType.NONE)
class Candy {
	@XmlElement
	String sku
	
	@XmlElement
	String candyName
	
	@XmlElement
	long currentQuantity
	
	@XmlElement
	BigDecimal candyPrice
	
	@XmlElement
	String pictureUrl
	
	static constraints = {
		sku blank:false, unique: true
		candyName blank: false
		candyPrice blank: false
		currentQuantity blank: false
		pictureUrl nullable: true
		 
	}

}
