package com.atf.candystore

class CandyOrderLine {
	static belongsTo = [order : CandyOrder]
	Candy candy;
	long quantity;
	BigDecimal priceXUnit;
	BigDecimal total;

    static constraints = {
		quantity blank:false
		priceXUnit blank:false, format: "#0.00"
		total blank:false, format: "#0.00"
    }
}
