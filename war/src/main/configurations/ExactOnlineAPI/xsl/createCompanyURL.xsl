<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="division"/>
<xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:text>https://start.exactonline.nl/api/v1/</xsl:text>
    <xsl:value-of select="$division"/>
    <xsl:text>/bulk/crm/Accounts?$select=ID&amp;$filter=Name%20eq%20'</xsl:text>
    <xsl:value-of select="invoice/company-name"/>
    <xsl:text>'&amp;'</xsl:text>
  </xsl:template>

</xsl:stylesheet>