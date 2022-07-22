<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>

  <xsl:template match="/">
    <xsl:value-of select="/feed/entry/content/properties/ID"/>
    
  </xsl:template>

</xsl:stylesheet>