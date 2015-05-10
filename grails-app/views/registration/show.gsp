
<%@ page import="com.atf.candystore.Registration" %>
<%@ page import="com.atf.candystore.CandyType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'registration.label', default: 'Registration')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-registration" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registration">
			
				<g:if test="${registrationInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="registration.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${registrationInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.middleInitial}">
				<li class="fieldcontain">
					<span id="middleInitial-label" class="property-label"><g:message code="registration.middleInitial.label" default="Middle Initial" /></span>
					
						<span class="property-value" aria-labelledby="middleInitial-label"><g:fieldValue bean="${registrationInstance}" field="middleInitial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="registration.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${registrationInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="registration.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${registrationInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="registration.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${registrationInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="registration.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${registrationInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="registration.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${registrationInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="registration.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${registrationInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="registration.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${registrationInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationInstance?.candyTypes}">
				<li class="fieldcontain">
					<span id="candyType-label" class="property-label"><g:message code="registration.candyType.label" default="Candy Types" /></span>
					
						<span class="property-value" aria-labelledby="candyTypes-label">
						<g:each in="${registrationInstance?.candyTypes}" var="candyType" status="i">
							<g:fieldValue bean="${candyType}" field="candyTypeDescription"/>
						</g:each>
						</span>
					
				</li>
				</g:if>
			</ol>
		</div>
	</body>
</html>
