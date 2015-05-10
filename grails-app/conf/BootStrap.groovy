import org.h2.tools.Server

import com.atf.candystore.Candy
import com.atf.candystore.CandyOrder
import com.atf.candystore.CandyOrderLine
import com.atf.candystore.CandyType

class BootStrap {

    def init = { servletContext ->
		Candy one = new Candy(sku: "000000001", candyName: "Milky Way", candyPrice: 0.60, currentQuantity: 543, pictureUrl: "candy/milkyway.jpg")
		one.save()
		Candy two = new Candy(sku: "000000002",candyName: "Twix", candyPrice: 0.60, currentQuantity: 750, pictureUrl: "candy/twix.jpg")
		two.save()
		new Candy(sku: "000000003",candyName: "3 Musketeers", candyPrice: 0.75, currentQuantity: 430, pictureUrl: "candy/3musk.jpg").save()
		new Candy(sku: "000000004",candyName: "Snickers", candyPrice: 0.70, currentQuantity: 825, pictureUrl: "candy/snickers.jpg").save()
		new Candy(sku: "000000005",candyName: "Mars", candyPrice: 0.65, currentQuantity: 850, pictureUrl: "candy/mars.jpg").save()
		
		
//		CandyOrder order = new CandyOrder(orderNumber: 1, orderTotal: 120)
//		order.save()
//		new CandyOrderLine(order: order, quantity: 10, priceXUnit: 0.60, total: 6.00, candy: one).save()
//		new CandyOrderLine(order: order, quantity: 20, priceXUnit: 0.60, total: 12.00, candy: two).save()
		
		new CandyType(candyTypeCode: "CHK", candyTypeDescription: "Chocolate Bar").save()
		new CandyType(candyTypeCode: "LOP", candyTypeDescription: "Lolipop").save()
		new CandyType(candyTypeCode: "HRC", candyTypeDescription: "Hard Candy").save()
		new CandyType(candyTypeCode: "COK", candyTypeDescription: "Cookies").save()
		new CandyType(candyTypeCode: "PWR", candyTypeDescription: "Powder Candy").save()
		new CandyType(candyTypeCode: "SPY", candyTypeDescription: "Spicy Candy").save()
		new CandyType(candyTypeCode: "SUR", candyTypeDescription: "Sour Candy").save()
		new CandyType(candyTypeCode: "SSW", candyTypeDescription: "Super Sweet Candy").save()
		
//		Server.createTcpServer('-tcpPort', '9123', '-tcpAllowOthers').start()
		
		    }
    def destroy = {
    }
}
