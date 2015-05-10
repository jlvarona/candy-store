<%@ page import="com.atf.candystore.Registration" %>
<%@ page import="com.atf.candystore.CandyType" %>



<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="registration.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="25" required="" value="${registrationInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'middleInitial', 'error')} required">
	<label for="middleInitial">
		<g:message code="registration.middleInitial.label" default="Middle Initial" />
	</label>
	<g:textField name="middleInitial" maxlength="1" value="${registrationInstance?.middleInitial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="registration.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${registrationInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'address1', 'error')} required">
	<label for="address1">
		<g:message code="registration.address1.label" default="Address1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address1" required="" value="${registrationInstance?.address1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'address2', 'error')} required">
	<label for="address2">
		<g:message code="registration.address2.label" default="Address2" />
	</label>
	<g:textField name="address2" value="${registrationInstance?.address2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="registration.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${registrationInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="registration.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" required="" value="${registrationInstance?.zipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="registration.phoneNumber.label" default="Phone Number" />
	</label>
	<g:textField name="phoneNumber" pattern="${registrationInstance.constraints.phoneNumber.matches}" value="${registrationInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="registration.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${registrationInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'state', 'error')} required">
	<label for="candyType">
		<g:message code="registration.candyType.label" default="What candy types do you like best?:" />
	</label>
</div>
<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'state', 'error')} required">
		<g:select name="candyTypes" from="${CandyType.list()}" optionValue="candyTypeDescription" optionKey="id" multiple='true' class="many-to-one"/>
</div>
