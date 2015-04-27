import com.atf.candystore.Candy
import com.atf.candystore.Contact

class BootStrap {

    def init = { servletContext ->
		new Candy(candyName: "Milky Way", candyPrice: 0.60, currentQuantity: 543, pictureUrl: "candy/milkyway.jpg").save()
		new Candy(candyName: "Twix", candyPrice: 0.60, currentQuantity: 750, pictureUrl: "candy/twix.jpg").save()
		new Candy(candyName: "3 Musketeers", candyPrice: 0.75, currentQuantity: 430, pictureUrl: "candy/3musk.jpg").save()
		new Candy(candyName: "Snickers", candyPrice: 0.70, currentQuantity: 825, pictureUrl: "candy/snickers.jpg").save()
		new Candy(candyName: "Mars", candyPrice: 0.65, currentQuantity: 850, pictureUrl: "candy/mars.jpg").save()
    }
    def destroy = {
    }
}
