<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Candy Store EDU - Main</title>
</head>
<body>
<script type = "text/javascript">  
$(document).ready(function() {
    $(".contentPost").delay(5000).fadeIn(500);
});

</script>
<style>
.contentPost { display:none;}
</style>
  <div class="body">
      <section id="intro">
    	<header>
    		<h2>Do you love CANDY as much as we do?</h2>
        </header>
        <p name="whyWeLoveCandy">Candy, also called sweets or lollies, is a confection that features sugar as a principal ingredient. The category, called sugar confectionery, encompasses any sweet confection, including chocolate, chewing gum, and sugar candy. Vegetables, fruit, or nuts which have been glazed and coated with sugar are said to be candied. </p>
        <div id="popup">
        	<a href="http://en.wikipedia.org/wiki/Candy">Read More here!<span id="readMoreCandy">Candy! Candy! Candy! <br>Learn more about Candy.<br>Just click the button and see.</span></a>
        </div>
        <div id="photo">
        	<div>
            	<h3>Candy Store EDU</h3>
            </div>
        </div>
        <div class="contentPost" id="delayeddiv">
        	<asset:image id="delayedImage" src="candy/iwantcandy.jpg"/>
		</div>
    </section>
	<blockquote cite="http://en.wikipedia.org/wiki/Trident_(gum)">4 out of 5 dentists approve our candy!</blockquote>
	<blockquote cite="https://www.life360.com/blog/health-benefits-of-candy-2/">People who eat candy live longer!</blockquote>
  </div>
</body>
</html>