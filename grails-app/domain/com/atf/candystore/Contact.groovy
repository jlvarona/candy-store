package com.atf.candystore

class Contact {

	String firstName
	String lastName
	String phoneNumber
	String message
	
	static constraints = {
		firstName blank:false 
		lastName blank:false 
		phoneNumber matches:"\\(\\d\\d\\d\\) \\d\\d\\d-\\d\\d\\d\\d" 
		message blank:false
	}
}
