/**
 * 
 */
package com.atf.candystore.pogo

import javax.xml.bind.annotation.XmlAccessType
import javax.xml.bind.annotation.XmlAccessorType
import javax.xml.bind.annotation.XmlElement

/**
 * @author Jorge
 *
 */
@XmlAccessorType(XmlAccessType.NONE)
class OrderPogo {
	
	@XmlElement
	List<OrderLinePogo> orderLines
}
