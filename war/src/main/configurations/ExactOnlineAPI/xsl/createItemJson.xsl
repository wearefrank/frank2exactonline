<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="price"/>
<xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:text>{"Item":"</xsl:text>
    <xsl:value-of select="/entry/content/properties/ID"/>
    <xsl:text>","Price":"</xsl:text>
    <xsl:value-of select="$price"/>
    <xsl:text>"}</xsl:text>
  </xsl:template>

</xsl:stylesheet>