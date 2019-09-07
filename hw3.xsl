<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <head></head>
  <body>
  <h1>List of Clients</h1>
<!-- Data Container-->
    <table border="1">
      <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Phone</th>
        <th>E-mail</th>
        <th>Account_Total</th>
      </tr>
      <xsl:for-each select="Accounts/Client">
      <tr>
        <td><xsl:value-of select="Name"/></td>
        <td><xsl:value-of select="Phone"/></td>
		<td><xsl:value-of select="E-mail"/></td>
		<td><xsl:value-of select="Account_Total"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>