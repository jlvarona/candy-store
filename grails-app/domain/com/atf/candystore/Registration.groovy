package com.atf.candystore

class Registration {
	String firstName
	String middleInitial
	String lastName
	String address1
	String address2
	String city
	String state
	String zipCode 
	String phoneNumber
	static hasMany = [candyTypes : CandyType]
	
	static constraints = {
		firstName blank: false, size: 1..25
		middleInitial blank: true, maxSize: 1, nullable: true
		lastName blank: false
		address1 blank: false
		address2 blank: true, nullable: true
		city blank: false
		zipCode blank: false
		phoneNumber matches: "\\(\\d\\d\\d\\) \\d\\d\\d-\\d\\d\\d\\d", nullable: true, blank: true
	}
}
