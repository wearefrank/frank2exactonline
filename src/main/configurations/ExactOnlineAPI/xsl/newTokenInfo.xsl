<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="oldTokenInfo"/>

	<xsl:template match="/">
		<root>
			<xsl:copy-of select="$oldTokenInfo/root/(client_id,client_secret),root/(access_token,refresh_token)"/>
		</root>
	</xsl:template>

</xsl:stylesheet>