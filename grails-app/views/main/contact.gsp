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
		<g:form id="frmContactUs" title ="Contact Us" method="post" action="index.html">
		<table>
		<tr>
		<td>First name:</td>
		<td><input id="txtFirstName" type="text" name="fname" maxlength="25"></td>
		</tr>
		<tr>
		<td>Last name:</td>
		<td><input id="txtLastName" type="text" name="lname" maxlength="50"></td>
		</tr>
		<tr>
		<td>Phone Number:</td>
		<td><input id="txtPhoneNumber" type="text" name="phone" maxlength="10" onkeypress='return event.charCode >= 48 && event.charCode <= 57'></td>
		</tr>
		<tr>
		<td style="vertical-align:top;">Message:</td>
		<td><textarea id="txtMessage" name="msg" rows="4" cols="50"></textarea></td>
		</tr>
		</table>
 		<input id="btnSubmitContactUs" type="submit" value="Submit" >
		
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