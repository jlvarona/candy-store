package com.atf.candystore

class Contact {

	String firstName
	String lastName
	String phoneNumber
	String message
	
	static constraints = {
		firstName blank:false, size: 1..25 
		lastName blank:false, size: 1..50 
		phoneNumber matches:"\\(\\d\\d\\d\\) \\d\\d\\d-\\d\\d\\d\\d" 
		message blank:false
	}
}
