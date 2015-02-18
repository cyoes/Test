<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>BDMS Users</h2>
    <table xsl:version="2.0">
      <tr bgcolor="#9acd32">
        <th>Group</th>
        <th>Users</th>
      </tr>
      <xsl:for-each-group select="DsDescriptor/Security/Groups/Group" group-by="@name">

        <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="current-group()//Users/User/@name"  separator=","/></td>
				

        </tr>
     </xsl:for-each-group>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
