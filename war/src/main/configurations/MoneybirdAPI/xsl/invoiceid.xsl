<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>
<xsl:template match="/">
<temp>
   <xsl:apply-templates select="/objects/object"/>
</temp>
</xsl:template>

<xsl:template match="object">
<id><xsl:value-of select="./id"/></id>
</xsl:template>

</xsl:stylesheet>