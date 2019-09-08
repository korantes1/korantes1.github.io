<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
  <html lang="en">
    <head>
        <title>HW3 - XSLT</title>
        <link rel="stylesheet" type="text/css" href="hw3.css"></link>
    </head>
  <body>
  <h1>List of Clients</h1>
<!-- Data Container-->
    <table>
      <tr>
        <th>Name</th>
        <th>Phone</th>
        <th>E-mail</th>
        <th>Account Total</th>
      </tr>
      <xsl:for-each select="Accounts/Client">
      <tr>
        <td><xsl:value-of select="Name"/></td>
        <td><xsl:value-of select="Phone"/></td>
		<td><xsl:value-of select="E-mail"/></td>
      <xsl:choose>
      <xsl:when test="Account_Total &gt; 80000">
         <td class="lessthan">
         <xsl:value-of select="Account_Total"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="Account_Total"/></td>
      </xsl:otherwise>
      </xsl:choose>	 
      </tr>	  
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>