<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Exam</title>
    <link rel="stylesheet" href="./CSS/property.css"/>
  </head>
  <body>
    <h2>Houses</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>adress</th>
        <th>date</th>
        <th>floors</th>
        <th>price</th>
      </tr>

      <xsl:for-each select="propertys/house">
      <xsl:sort select="adress"/>
      <xsl:sort select="date"/>
      <xsl:sort select="floors"/>
      <xsl:sort select="price"/>

      
      <tr>
        <td><xsl:value-of select="adress"/></td>
        <td><xsl:value-of select="date"/></td>
        <td><xsl:value-of select="floors"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>

    </table>

    <h2>Apartment</h2>
    <table border="1">
       <tr bgcolor="#9acd32">
        <th>adress</th>
        <th>date</th>
        <th>number</th>
        <th>price</th>
      </tr>

      <xsl:for-each select="propertys/apartment">
      <xsl:sort select="adress"/>
      <xsl:sort select="date"/>
      <xsl:sort select="number"/>
      <xsl:sort select="price"/>

      
      <tr>
        <td><xsl:value-of select="adress"/></td>
        <td><xsl:value-of select="date"/></td>
        <td><xsl:value-of select="number"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>