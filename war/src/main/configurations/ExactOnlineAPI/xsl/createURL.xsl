<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="code"/>
<xsl:param name="division"/>
<xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:text>https://start.exactonline.nl/api/v1/</xsl:text>
    <xsl:value-of select="$division"/>    
    <xsl:text>/logistics/Items?$filter=Code%20eq%20'</xsl:text>
    <xsl:value-of select="$code"/>
    <xsl:text>'&amp;$select=ID</xsl:text>
  </xsl:template>

</xsl:stylesheet>