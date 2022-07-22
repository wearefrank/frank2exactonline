<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>

<xsl:template match="/">
    <invoice>
    <company-name><xsl:value-of select="replace(/hash/contact/company-name,' ','%20')"/></company-name>
    <created-at><xsl:value-of select="replace(replace(replace(/hash/created-at,'T','+'), 'Z', '+UTC'),':','%3A')"/></created-at>
    <items>
        <xsl:apply-templates select="/hash/details/detail"/>
    </items>
    </invoice>
</xsl:template>

<xsl:template match="detail">
    <item>
        <description><xsl:value-of select="./description"/></description>
        <amount><xsl:value-of select="replace(./amount,' x','')"/></amount>
        <price><xsl:value-of select="./price"/></price>
    </item>
</xsl:template>

</xsl:stylesheet>