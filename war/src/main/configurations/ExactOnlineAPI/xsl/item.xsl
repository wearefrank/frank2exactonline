<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="code"/>
<xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:text>{"Code":"</xsl:text>
    <xsl:value-of select="$code"/>
    <xsl:text>","Description":"</xsl:text>
    <xsl:value-of select="/item/description"/>
    <xsl:text>"}</xsl:text>
  </xsl:template>

</xsl:stylesheet>