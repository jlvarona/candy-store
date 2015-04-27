<%@ page import="com.atf.candystore.CandyOrder" %>



<div class="fieldcontain ${hasErrors(bean: candyOrderInstance, field: 'orderNumber', 'error')} required">
	<label for="orderNumber">
		<g:message code="candyOrder.orderNumber.label" default="Order Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orderNumber" type="number" value="${candyOrderInstance.orderNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyOrderInstance, field: 'orderTotal', 'error')} ">
	<label for="orderTotal">
		<g:message code="candyOrder.orderTotal.label" default="Order Total" />
		
	</label>
	<g:field name="orderTotal" value="${fieldValue(bean: candyOrderInstance, field: 'orderTotal')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candyOrderInstance, field: 'orderLine', 'error')} ">
	<label for="orderLine">
		<g:message code="candyOrder.orderLine.label" default="Order Line" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${candyOrderInstance?.orderLine?}" var="o">
    <li><g:link controller="candyOrderLine" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="candyOrderLine" action="create" params="['candyOrder.id': candyOrderInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'candyOrderLine.label', default: 'CandyOrderLine')])}</g:link>
</li>
</ul>


</div>

