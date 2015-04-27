
<%@ page import="com.atf.candystore.CandyOrderLine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candyOrderLine.label', default: 'CandyOrderLine')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candyOrderLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candyOrderLine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="quantity" title="${message(code: 'candyOrderLine.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="priceXUnit" title="${message(code: 'candyOrderLine.priceXUnit.label', default: 'Price XU nit')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'candyOrderLine.total.label', default: 'Total')}" />
					
						<th><g:message code="candyOrderLine.candy.label" default="Candy" /></th>
					
						<th><g:message code="candyOrderLine.order.label" default="Order" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candyOrderLineInstanceList}" status="i" var="candyOrderLineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candyOrderLineInstance.id}">${fieldValue(bean: candyOrderLineInstance, field: "quantity")}</g:link></td>
					
						<td>${fieldValue(bean: candyOrderLineInstance, field: "priceXUnit")}</td>
					
						<td>${fieldValue(bean: candyOrderLineInstance, field: "total")}</td>
					
						<td>${fieldValue(bean: candyOrderLineInstance, field: "candy")}</td>
					
						<td>${fieldValue(bean: candyOrderLineInstance, field: "order")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candyOrderLineInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
