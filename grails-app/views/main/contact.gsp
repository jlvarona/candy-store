<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Candy Store EDU - Contact Us</title>
</head>
<body>
  <div class="body">
    <section id="intro">
    	<header>
    		<h2>Contact us below...</h2>
        </header>
		<g:form url="[controller: 'main', action:'saveContact']" id="frmContactUs">
		<table>
		<tr>
		<td>
		<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="contact.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField id="txtFirstName" name="firstName" maxlength="25" required="" value="${contactInstance?.firstName}"/>

</div>
		</td>
		</tr>
		<tr>
		<td>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="contact.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField id="txtLastName" name="lastName" required="" value="${contactInstance?.lastName}"/>

</div>
		</td>
		</tr>
		<tr>
		<td>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="contact.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField id="txtPhoneNumber" name="phoneNumber" pattern="${contactInstance.constraints.phoneNumber.matches}" required="" value="${contactInstance?.phoneNumber}"/>

</div>
		</td>		
		</tr>
		<tr>
		<td style="vertical-align:top;">
											<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="contact.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea id="txtMessage" name="message" required="" value="${contactInstance?.message}" rows="4" cols="50"/>

</div>

		</td>
		</tr>
		</table>
 		<g:submitButton id="btnSubmitContactUs" name="submit" class="saveContact" value="${message(code: 'default.button.submit.label', default: 'Submit')}" />
		
  		</g:form>
		<div id="photo">
        	<div>
            	<h3>Candy Store EDU</h3>
            </div>
        </div>
        <br><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.</p>
     </section>  
  </div>
</body>
</html>