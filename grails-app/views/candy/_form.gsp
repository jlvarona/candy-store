<%@ page import="com.atf.candystore.Candy" %>



<div class="fieldcontain ${hasErrors(bean: candyInstance, field: 'sku', 'error')} required">
	<label for="sku">
		<g:message code="candy.sku.label" default="Sku" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sku" required="" value="${candyInstance?.sku}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyInstance, field: 'candyName', 'error')} required">
	<label for="candyName">
		<g:message code="candy.candyName.label" default="Candy Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="candyName" required="" value="${candyInstance?.candyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyInstance, field: 'candyPrice', 'error')} required">
	<label for="candyPrice">
		<g:message code="candy.candyPrice.label" default="Candy Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="candyPrice" value="${fieldValue(bean: candyInstance, field: 'candyPrice')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyInstance, field: 'currentQuantity', 'error')} required">
	<label for="currentQuantity">
		<g:message code="candy.currentQuantity.label" default="Current Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentQuantity" type="number" value="${candyInstance.currentQuantity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyInstance, field: 'pictureUrl', 'error')} ">
	<label for="pictureUrl">
		<g:message code="candy.pictureUrl.label" default="Picture Url" />
		
	</label>
	<g:textField name="pictureUrl" value="${candyInstance?.pictureUrl}"/>

</div>

