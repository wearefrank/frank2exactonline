<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="date"/>
<xsl:output method="xml"/>

  <xsl:template match="/">
    <date><xsl:value-of select="$date"/></date>
    
  </xsl:template>

</xsl:stylesheet>