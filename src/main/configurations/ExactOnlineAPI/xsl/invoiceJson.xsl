<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"/>
  <xsl:param name="companyname"/>

  <xsl:template match="/">
    {
    "OrderedBy": "<xsl:value-of select="$companyname"/>",
    "SalesInvoiceLines": [ <xsl:apply-templates select="results/result"/>
    ]
    }
  </xsl:template>

  <xsl:template match="result">
    {"Item": "<xsl:value-of select="./ID"/>" , "Quantity": "<xsl:value-of select="./amount"/>", "VATCode": "11"}<xsl:if test="not(position()=last())">,</xsl:if>
    
  </xsl:template>

</xsl:stylesheet>