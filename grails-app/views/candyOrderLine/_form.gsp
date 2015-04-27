<%@ page import="com.atf.candystore.CandyOrderLine" %>



<div class="fieldcontain ${hasErrors(bean: candyOrderLineInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="candyOrderLine.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${candyOrderLineInstance.quantity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyOrderLineInstance, field: 'priceXUnit', 'error')} required">
	<label for="priceXUnit">
		<g:message code="candyOrderLine.priceXUnit.label" default="Price XU nit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="priceXUnit" value="${fieldValue(bean: candyOrderLineInstance, field: 'priceXUnit')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyOrderLineInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="candyOrderLine.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: candyOrderLineInstance, field: 'total')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyOrderLineInstance, field: 'candy', 'error')} required">
	<label for="candy">
		<g:message code="candyOrderLine.candy.label" default="Candy" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candy" name="candy.id" from="${com.atf.candystore.Candy.list()}" optionKey="id" required="" value="${candyOrderLineInstance?.candy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyOrderLineInstance, field: 'order', 'error')} required">
	<label for="order">
		<g:message code="candyOrderLine.order.label" default="Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="order" name="order.id" from="${com.atf.candystore.CandyOrder.list()}" optionKey="id" required="" value="${candyOrderLineInstance?.order?.id}" class="many-to-one"/>

</div>

