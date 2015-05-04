class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"main", action:"home")
        "500"(view:'/error')
		
		"/candyorderREST/orderCandy"(controller: "CandyOrderREST", action: "orderCandy")
		
		"/candyorderREST/getOrder/$id?"(controller: "CandyOrderREST", action: "getOrder")
	}
}
