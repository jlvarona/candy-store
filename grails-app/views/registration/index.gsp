
<%@ page import="com.atf.candystore.Registration" %>
<!DOCTYPE html>
<html>
	<head>
		<!--  <meta name="layout" content="main">-->
		<g:set var="entityName" value="${message(code: 'registration.label', default: 'Registration')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registration" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'registration.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleInitial" title="${message(code: 'registration.middleInitial.label', default: 'Middle Initial')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'registration.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="address1" title="${message(code: 'registration.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'registration.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'registration.city.label', default: 'City')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationInstanceList}" status="i" var="registrationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationInstance.id}">${fieldValue(bean: registrationInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: registrationInstance, field: "middleInitial")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "address1")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "address2")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "city")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
