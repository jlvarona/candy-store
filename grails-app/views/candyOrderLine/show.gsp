
<%@ page import="com.atf.candystore.CandyOrderLine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candyOrderLine.label', default: 'CandyOrderLine')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candyOrderLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candyOrderLine" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candyOrderLine">
			
				<g:if test="${candyOrderLineInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="candyOrderLine.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${candyOrderLineInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyOrderLineInstance?.priceXUnit}">
				<li class="fieldcontain">
					<span id="priceXUnit-label" class="property-label"><g:message code="candyOrderLine.priceXUnit.label" default="Price XU nit" /></span>
					
						<span class="property-value" aria-labelledby="priceXUnit-label"><g:fieldValue bean="${candyOrderLineInstance}" field="priceXUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyOrderLineInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="candyOrderLine.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${candyOrderLineInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyOrderLineInstance?.candy}">
				<li class="fieldcontain">
					<span id="candy-label" class="property-label"><g:message code="candyOrderLine.candy.label" default="Candy" /></span>
					
						<span class="property-value" aria-labelledby="candy-label"><g:link controller="candy" action="show" id="${candyOrderLineInstance?.candy?.id}">${candyOrderLineInstance?.candy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyOrderLineInstance?.order}">
				<li class="fieldcontain">
					<span id="order-label" class="property-label"><g:message code="candyOrderLine.order.label" default="Order" /></span>
					
						<span class="property-value" aria-labelledby="order-label"><g:link controller="candyOrder" action="show" id="${candyOrderLineInstance?.order?.id}">${candyOrderLineInstance?.order?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candyOrderLineInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candyOrderLineInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
