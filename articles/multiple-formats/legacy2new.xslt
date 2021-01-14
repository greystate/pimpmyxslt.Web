<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

	<xsl:template match="/">
		<root id="-1">
			<xsl:apply-templates />
		</root>
	</xsl:template>
	
	<xsl:template match="node">
		<xsl:element name="{@nodeTypeAlias}">
			<xsl:attribute name="isDoc" />
			<xsl:copy-of select="@*[not(name() = 'nodeTypeAlias')]" />
			
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>

	<xsl:template match="data">
		<xsl:element name="{@alias}">
			<xsl:value-of select="." />
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>