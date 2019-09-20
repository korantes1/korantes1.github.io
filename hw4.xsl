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
	<p>We are a very young financial manager company and we are proud of our clients&#46;</p>
	<p>We have started with 1 client a little bit more than 10 years ago and now we have <xsl:value-of select="count(Accounts/Client)"/> clients&#33;</p>
	<p>These are our clients&#58; 
		<xsl:for-each select="Accounts/Client">
			<xsl:value-of select="normalize-space(Name)"/>
			<xsl:choose>
				<xsl:when test="position()=last()">&#46;</xsl:when>
				<xsl:when test="position()=last()-1">&#44; and </xsl:when>
				<xsl:otherwise>&#44; </xsl:otherwise>
			</xsl:choose>
		</xsl:for-each></p>
	 <p> <xsl:value-of select="count(//Years[. &gt; '7'])"/> of our clients are with us for more than 7 years&#33;</p>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>