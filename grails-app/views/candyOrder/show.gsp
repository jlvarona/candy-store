
<%@ page import="com.atf.candystore.CandyOrder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candyOrder.label', default: 'CandyOrder')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candyOrder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candyOrder" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candyOrder">
			
				<g:if test="${candyOrderInstance?.orderNumber}">
				<li class="fieldcontain">
					<span id="orderNumber-label" class="property-label"><g:message code="candyOrder.orderNumber.label" default="Order Number" /></span>
					
						<span class="property-value" aria-labelledby="orderNumber-label"><g:fieldValue bean="${candyOrderInstance}" field="orderNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyOrderInstance?.orderTotal}">
				<li class="fieldcontain">
					<span id="orderTotal-label" class="property-label"><g:message code="candyOrder.orderTotal.label" default="Order Total" /></span>
					
						<span class="property-value" aria-labelledby="orderTotal-label"><g:fieldValue bean="${candyOrderInstance}" field="orderTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyOrderInstance?.orderLine}">
				<li class="fieldcontain">
					<span id="orderLine-label" class="property-label"><g:message code="candyOrder.orderLine.label" default="Order Line" /></span>
					
						<g:each in="${candyOrderInstance.orderLine}" var="o">
						<span class="property-value" aria-labelledby="orderLine-label"><g:link controller="candyOrderLine" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candyOrderInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candyOrderInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
