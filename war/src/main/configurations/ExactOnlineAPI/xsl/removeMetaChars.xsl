<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="code"/>
<xsl:output method="text"/>
  <xsl:template match="/">
    <xsl:value-of select="translate($code, '$@!#%&amp;*:;?=', '')"/>
  </xsl:template>
</xsl:stylesheet>