<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8"/>

<xsl:template match="/">
  <xsl:value-of select="string('&#xa;')"/> <!-- \n -->
  <xsl:apply-templates select="dictionary"/> 
</xsl:template>

<xsl:template match="dictionary">
  <dictionary><xsl:value-of select="string('&#xa;')"/><!-- \n -->
  <xsl:apply-templates select="alphabet"/>
  <xsl:apply-templates select="sdefs"/>
  <xsl:apply-templates select="pardefs"/>
  <xsl:apply-templates select="section"/>
  </dictionary><xsl:value-of select="string('&#xa;')"/><!-- \n -->
</xsl:template>

<xsl:template name="alpha" match="alphabet">
  <alphabet>  
  <xsl:apply-templates />
  </alphabet><xsl:value-of select="string('&#xa;')"/> <!-- \n -->
</xsl:template>

<xsl:template match="sdefs">
  <sdefs>
  <xsl:apply-templates />
  </sdefs>
</xsl:template>

<xsl:template match="sdef">
  <xsl:copy-of select="."/>
</xsl:template>
<!-- ** Since here, a simple copy from the dictionary ** -->



<!-- *************************************** -->
<!-- Generates the new paradigms from pardef -->
<xsl:template match="pardefs">
  <xsl:value-of select="string('&#xa;')"/><!-- \n -->
  <pardefs><xsl:value-of select="string('&#xa;')"/><!-- \n -->

  <!-- Copy the dictionary original paradigms -->
  <xsl:apply-templates />
  <xsl:value-of select="string('&#xa;')"/><!-- \n -->

      <!-- in variable mypardef we save the pardefs nodes of the dictionary-->
      <xsl:variable name="mypardefs" select="//pardefs"/>

     <!-- ** Generates the news paradigms ** -->
      <xsl:for-each select="$paradigms">
      <!-- Here the body of each new paradigm -->
      <pardef n='{ concat(@name,"__",@prm) }'> <xsl:value-of select="string('&#xa;')"/><!-- \n -->

	 <!-- In the variable $paradigmname we save the name of the basic paradigm for expansion -->
         <xsl:variable name="paradigmname" select="./@name"/>
	 <!-- in the variable $paradigmtype we save the type of expansion we need -->
         <xsl:variable name="paradigmtype" select="./@type"/>
	 <!-- and in the variable $paradigmprm we save the name of the parameter for expansion -->
         <xsl:variable name="paradigmprm" select="./@prm"/>

         <xsl:call-template name="pardef-generated" select="$mypardefs/pardef[./@n=$paradigmname]">
	     <xsl:with-param name="parametro" select="$paradigmprm"/>
	     <xsl:with-param name="type" select="$paradigmtype"/>
	     <xsl:with-param name="ambito" select="$mypardefs/pardef[./@n=$paradigmname]"/>
	 </xsl:call-template> 

      </pardef>
      <xsl:value-of select="string('&#xa;')"/><!-- \n -->
    </xsl:for-each> 

  </pardefs><!--<xsl:value-of select="string('&#xa;')"/>--><!-- \n -->
</xsl:template>
<!-- *************************************** -->




<!-- ********* Works with the pardef nodes ********* -->
<!-- <xsl:template match="pardef"><xsl:copy-of select="."/></xsl:template>-->


<xsl:template match="pardef">
    <pardef n='{@n}'> <xsl:value-of select="string('&#xa;')"/><!-- \n -->
    <xsl:apply-templates/>
    </pardef>
    <xsl:value-of select="string('&#xa;')"/><!-- \n -->
</xsl:template>

<xsl:template name='pardef-generated'>
   <xsl:param name="parametro"/>
   <xsl:param name="type"/>
   <xsl:param name="ambito"/>
   <xsl:apply-templates select="$ambito/e">
      <xsl:with-param name="parametro" select="$parametro"/>
      <xsl:with-param name="type" select="$type"/>
   </xsl:apply-templates>
   <xsl:value-of select="string('&#xa;')"/> <!-- \n -->
</xsl:template>



<!-- *** Copy the rest of the dictionary deleting "prm" atribute from <par> nodes ** -->
<xsl:template match="section">
   <xsl:copy-of select="."/>
</xsl:template>

<xsl:template match="section">
  <xsl:value-of select="string('&#xa;')"/><!-- \n -->
  <section id='{@id}' type='{@type}'>
  <xsl:apply-templates />
  </section><xsl:value-of select="string('&#xa;')"/><!-- \n -->
</xsl:template>



<xsl:template match="e[@lm]"> <!-- with 'lm' atribute-->
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <xsl:value-of select="string('                        ')"/>
      <e lm='{@lm}' i='{@i}'>
         <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
         </xsl:apply-templates>
      </e>   <xsl:value-of select="string('&#xa;')"/> <!-- \n -->
</xsl:template>
<xsl:template match="e[@r]">  <!-- with 'r' atribute-->
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <xsl:value-of select="string('                        ')"/>
      <e r='{@r}' i='{@i}'>
         <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
         </xsl:apply-templates>
      </e>   <xsl:value-of select="string('&#xa;')"/> <!-- \n -->
</xsl:template>
<xsl:template match="e[not(@r|@lm)]">
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <xsl:value-of select="string('                        ')"/>
      <e i='{@i}'>
        <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
        </xsl:apply-templates>
      </e>   <xsl:value-of select="string('&#xa;')"/> <!-- \n -->
</xsl:template>


<!-- If the <par> node have "prm" atribute delete it -->
<xsl:template match="par[@prm]">
       <par n='{ concat(@n,"__",@prm) }' />
</xsl:template>
<!-- If the <par> node have "sa" atribute delete it, otherwise copy -->
<xsl:template match="par[@sa]">
       <par n='{ concat(@n,"__",@sa) }' />
</xsl:template>
<xsl:template match="par[not(@prm|@sa)]">
       <xsl:copy-of select="."/>
</xsl:template>
<!-- *********************************************** -->


<xsl:template match="i">
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <i>
        <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
        </xsl:apply-templates>
      </i>
</xsl:template>

<xsl:template match="p">
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <p>
        <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
        </xsl:apply-templates>
      </p>
</xsl:template>
<xsl:template match="l">
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <l>
        <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
        </xsl:apply-templates>
      </l>
</xsl:template>
<xsl:template match="r">
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <r>
        <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
        </xsl:apply-templates>
      </r>
</xsl:template>
<xsl:template match="g">
<xsl:param name="parametro"/>
<xsl:param name="type"/>
      <g>
        <xsl:apply-templates>
           <xsl:with-param name="parametro" select="$parametro"/>
           <xsl:with-param name="type" select="$type"/>
        </xsl:apply-templates>
      </g>
</xsl:template>




<xsl:template match="re|s|a|b|j">
   <xsl:copy-of select="."/>
</xsl:template>


<!-- *******  Treatement of the parameter label ******** -->
<!-- "prm" is the label for a text insertion ($type=text) -->
<!-- "sa" is the label for a tag insertion   ($type=tag)  -->
<xsl:template match="prm|sa">
   <xsl:param name="parametro"/>
   <xsl:param name="type"/>
   <xsl:choose>
       	<xsl:when test="$type='text'">
   	 	<xsl:value-of select="$parametro"/>   
      	</xsl:when>
       	<xsl:when test="$type='tag'">
	  	<xsl:text disable-output-escaping="yes"><![CDATA[<s n="]]></xsl:text>
   	  	<xsl:value-of select="$parametro"/>   
	  	<xsl:text disable-output-escaping="yes"><![CDATA["/>]]></xsl:text>
      	</xsl:when> 
   </xsl:choose>
</xsl:template>


</xsl:stylesheet>
