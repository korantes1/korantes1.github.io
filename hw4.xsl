<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
  <html lang="en">
    <head>
        <title>HW4 - XPATH</title>
        <link rel="stylesheet" type="text/css" href="hw4.css"></link>
    </head>
  <body>
  	<h1>ABC Financial Startup</h1>
<!-- Data Container-->
  	<img src="financialstartup.jpg" alt="ABC Financial Startup"/>
	<p>We are a very young financial manager company and we are proud of our clients.</p>
	<p>We have started with 1 client a little bit more than 10 years ago and now we have <xsl:value-of select="count(Accounts/Client)"/> clients! </p>
	<p>These are our clients: 
		<xsl:for-each select="Accounts/Client/Name">
			<xsl:value-of select="Accounts/Client/Name"/>
			<xsl:choose>
				<xsl:when test="position()=last()">.</xsl:when>
				<xsl:when test="position()=last()-1">, and</xsl:when>
				<xsl:otherwise>, </xsl:otherwise>
			</xsl:choose>
		</xsl:for-each></p>
	 <p>of our clients are with us for more than 7 years!</p>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>