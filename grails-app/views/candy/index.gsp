
<%@ page import="com.atf.candystore.Candy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candy.label', default: 'Candy')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candy" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candy" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="sku" title="${message(code: 'candy.sku.label', default: 'Sku')}" />
					
						<g:sortableColumn property="candyName" title="${message(code: 'candy.candyName.label', default: 'Candy Name')}" />
					
						<g:sortableColumn property="candyPrice" title="${message(code: 'candy.candyPrice.label', default: 'Candy Price')}" />
					
						<g:sortableColumn property="currentQuantity" title="${message(code: 'candy.currentQuantity.label', default: 'Current Quantity')}" />
					
						<g:sortableColumn property="pictureUrl" title="${message(code: 'candy.pictureUrl.label', default: 'Picture Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candyInstanceList}" status="i" var="candyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candyInstance.id}">${fieldValue(bean: candyInstance, field: "sku")}</g:link></td>
					
						<td>${fieldValue(bean: candyInstance, field: "candyName")}</td>
					
						<td>${fieldValue(bean: candyInstance, field: "candyPrice")}</td>
					
						<td>${fieldValue(bean: candyInstance, field: "currentQuantity")}</td>
					
						<td><asset:image src="${candyInstance.pictureUrl}" width="60" height="60"/></td>
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
