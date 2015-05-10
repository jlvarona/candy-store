<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="candyStoreLogodiv" role="banner"><g:link controller="main" action="home"><asset:image id="candyStoreLogo" src="ATF-Candy-logo1.png" alt="CandyStore"/></g:link></div>
	    <nav id="global">
    		<ul>
        		<li><g:link controller="main" action="home">Home</g:link></li>
            	<li><a href="http://www.agiletestingframework.com/about/">About</a></li>
	            <li><g:link controller="candyServices" action="serviceframe">Services</g:link></li>
    	        <li><g:link controller="candy" action="index">Candy</g:link></li>
    	        <li><g:link controller="main" action="contact">Contact Us</g:link></li>
	        </ul>
	    </nav>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>		
		<div class="footer" role="contentinfo">123 Candy Store Ln., SweetVille, AZ 12345</div>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
