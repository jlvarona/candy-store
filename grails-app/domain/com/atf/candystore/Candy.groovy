/**
 * 
 */
package com.atf.candystore

/**
 * @author Jorge
 *
 */
class Candy {
	String sku
	String candyName
	long currentQuantity
	BigDecimal candyPrice
	String pictureUrl
	
	static constraints = {
		sku blank:false, unique: true
		candyName blank: false
		candyPrice blank: false
		currentQuantity blank: false
		pictureUrl nullable: true
		 
	}

}
