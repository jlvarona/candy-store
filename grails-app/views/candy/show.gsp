
<%@ page import="com.atf.candystore.Candy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candy.label', default: 'Candy')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candy" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candy" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candy">
			
				<g:if test="${candyInstance?.sku}">
				<li class="fieldcontain">
					<span id="sku-label" class="property-label"><g:message code="candy.sku.label" default="Sku" /></span>
					
						<span class="property-value" aria-labelledby="sku-label"><g:fieldValue bean="${candyInstance}" field="sku"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyInstance?.candyName}">
				<li class="fieldcontain">
					<span id="candyName-label" class="property-label"><g:message code="candy.candyName.label" default="Candy Name" /></span>
					
						<span class="property-value" aria-labelledby="candyName-label"><g:fieldValue bean="${candyInstance}" field="candyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyInstance?.candyPrice}">
				<li class="fieldcontain">
					<span id="candyPrice-label" class="property-label"><g:message code="candy.candyPrice.label" default="Candy Price" /></span>
					
						<span class="property-value" aria-labelledby="candyPrice-label"><g:fieldValue bean="${candyInstance}" field="candyPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyInstance?.currentQuantity}">
				<li class="fieldcontain">
					<span id="currentQuantity-label" class="property-label"><g:message code="candy.currentQuantity.label" default="Current Quantity" /></span>
					
						<span class="property-value" aria-labelledby="currentQuantity-label"><g:fieldValue bean="${candyInstance}" field="currentQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candyInstance?.pictureUrl}">
				<li class="fieldcontain">
					<span id="pictureUrl-label" class="property-label"><g:message code="candy.pictureUrl.label" default="Picture Url" /></span>
					
						<span class="property-value" aria-labelledby="pictureUrl-label"><g:fieldValue bean="${candyInstance}" field="pictureUrl"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
