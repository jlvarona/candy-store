/**
 * 
 */
package com.atf.candystore

/**
 * @author Jorge
 *
 */
class Candy {
	String candyName
	long currentQuantity
	BigDecimal candyPrice
	String pictureUrl
	
	static constraints = {
		candyName blank: false, unique: true
		candyPrice blank: false
		currentQuantity blank: false
		pictureUrl nullable: true
		 
	}

}
