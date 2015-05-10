package com.atf.candystore

class CandyType {
	String candyTypeCode
	String candyTypeDescription
	
    static constraints = {
		candyTypeCode unique: true
    }
}
