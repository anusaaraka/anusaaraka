<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="UTF-8" indent="no"/>

<xsl:template match="/">
  <xsl:text disable-output-escaping="yes"><![CDATA[
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                              xmlns:data="http://www.apertium.org">
	<xsl:import href="principal.xsl"/>
	<data:paradigms>
]]> </xsl:text>

  <xsl:apply-templates select="//par[@prm]">
	<!-- Show the sorted pairs of expansion -->
	<xsl:sort select='./@n' data-type='text' order='descending' />
  	  <xsl:sort select='./@prm' data-type='text' order='descending' />
  </xsl:apply-templates>
  <xsl:apply-templates select="//par[@sa]">
	<!-- Show the sorted pairs of expansion -->
	<xsl:sort select='./@n' data-type='text' order='descending' />
  	  <xsl:sort select='./@sa' data-type='text' order='descending' />
  </xsl:apply-templates>

  <xsl:text disable-output-escaping="yes"><![CDATA[
	</data:paradigms>
  <xsl:variable name="paradigms" select="document('')/*/data:paradigms/*"/>
</xsl:stylesheet>
  ]]> </xsl:text>

</xsl:template>



<!-- type is "text" to insert a simple text and is "tag" to insert a xml tag -->
<xsl:template match="par[@prm]">
  <xsl:text disable-output-escaping="yes"><![CDATA[		<paradigm name="]]></xsl:text>
  <xsl:value-of select="@n"/> 
  <xsl:text disable-output-escaping="yes"><![CDATA[" prm="]]></xsl:text>
  <xsl:value-of select="@prm"/> 
  <xsl:text disable-output-escaping="yes"><![CDATA[" type="text"/>
]]> </xsl:text>
</xsl:template>
<xsl:template match="par[@sa]">
  <xsl:text disable-output-escaping="yes"><![CDATA[		<paradigm name="]]></xsl:text>
  <xsl:value-of select="@n"/> 
  <xsl:text disable-output-escaping="yes"><![CDATA[" prm="]]></xsl:text>
  <xsl:value-of select="@sa"/> 
  <xsl:text disable-output-escaping="yes"><![CDATA[" type="tag"/>
]]> </xsl:text>
</xsl:template>



</xsl:stylesheet>
