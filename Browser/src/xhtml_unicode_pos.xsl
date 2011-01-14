<?xml version="1.0" encoding="ISO-8859-1"?>

<!--
Copyright (C) 2005 Sunil Mohan Adapa <sunil at atc tcs co in>

This program is free software; you can redistribute it and/or 
modify it under the terms of the GNU General Public License 
as published by the Free Software Foundation; either 
version 2 of the License, or (at your option) any later 
version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" encoding="UTF-8" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"/>

<xsl:variable name="chunker_row">h3</xsl:variable>

<xsl:template match="/rt">
<html>
<head>
<link href="style_pos.css" type="text/css" rel="stylesheet" />
<link href="english_hindi_pos.css" type="text/css" rel="stylesheet" />
<script src="script.js" type="text/javascript"></script>
<script src="open.js" type="text/javascript"></script>
<script src="english_hindi_pos.js" type="text/javascript"></script>
<title>anusAraka</title>
</head>
<body onload="register_keys()">
  <div id="navigation">
  <form action="" onsubmit="goto_section(); return false;">
    <p>
      <a id="translation" href="ZZZZZZZZ.html" target="_new"> Translation </a>
      <a id="help" href="help.html" target="_new">Help</a>
      <input type="text" name="goto_section_value" size="5" />
      <input type="button" value="Goto" onclick="goto_section()" />
      <xsl:variable name="no_of_rows" select="@rows" />
      <input type="hidden" name="no_of_rows" value="{$no_of_rows}" />
      <input type="button" value="Show/Hide Rows..." onclick="window.open('rows.html','ShowHideRowsWindow','top=200,left=200,height=500,width=300,location=no,menubar=no,toolbar=no,directories=no,statusbar=no');" />
      <input type="checkbox" name="numbers_value" checked="checked" onchange="toggle_numbers()" />Numbers
      <input type="checkbox" name="border_value" checked="checked" onchange="toggle_borders()" />Borders
    </p>
  </form>
  </div>
  <xsl:apply-templates select="title" />
  <div class="float_clear"> </div>
  <xsl:for-each select="p">
      <xsl:apply-templates select="nextline" />
      <div class="float_clear"> </div>
  </xsl:for-each>
  <!-- TODO: this does not seem to be the proper way-->
  <div class="bottom"></div>
</body>
</html>
</xsl:template>

<xsl:template match="nextline|title">
  <form class="suggestion" action="sumbit_suggestions.php">
  <!-- Number of words in this line -->
  <xsl:variable name="no_of_words" select="@words" />

  <!-- Number of rows in this line -->
  <!-- TODO: shouldn't we be taking it from rt/@rows? -->
  <xsl:variable name="no_of_rows" select="count(*) div $no_of_words" />


  <!-- for each item in the table -->
  <xsl:for-each select="*">

    <!-- Obtain the row number -->
    <xsl:variable name="row_no" select="((position()-1) mod $no_of_rows) + 1" />
    <!-- Obtain the column number -->
    <xsl:variable name="column_no" select="ceiling(position() div $no_of_rows)" />

	<!-- Start the table if we have to -->
	<xsl:if test="$row_no = 1">
	  <xsl:text disable-output-escaping="yes">&lt;table cellspacing="0"&gt;
	  </xsl:text>
	</xsl:if>

    <!-- Open a TR -->
    <xsl:text disable-output-escaping="yes">
&lt;tr class="row</xsl:text>
    <xsl:value-of select="$row_no" />
    <xsl:text disable-output-escaping="yes">"&gt;
  </xsl:text>
 
	<xsl:variable name="sentence_name">
	  <xsl:number level="multiple" count="p|nextline|title" format="1.1" from="rt"/>
    </xsl:variable>
    <!-- Print the number column -->
    <xsl:if test="$column_no = 1">
      <td class="number">
	    <xsl:value-of select="$sentence_name"/>
	    <xsl:number level="single" count="*" format=".A"/>
	    <!-- Print the sentence anchor -->
	    <xsl:if test="$row_no=1">
	      <a name="sentence_{$sentence_name}" />
	    </xsl:if>
      </td>
    </xsl:if>

    <!-- Print the other columns -->
    <!-- Obtain the column type -->
    <!-- TODO remove hardcoded h3 -->
    <xsl:variable name="column_type_raw" select="../h3[$column_no]" />
    <!-- Remove the trailing '.' -->
    <xsl:variable name="column_type_trim" select="normalize-space(translate($column_type_raw,'.',''))" />
    <!-- Seperate the prefix and the actual type -->
	<xsl:variable name="column_type" select="substring($column_type_trim, (2*contains($column_type_trim, '-')) + 1)" />
    <td class="{$column_type}">
      <xsl:copy-of select="node()" />
      <xsl:call-template name="handle_whitespace">
        <xsl:with-param name="word" select="." />
      </xsl:call-template>
      <!--<xsl:if test=". = ''">-</xsl:if>-->
    </td>

    <!-- End the tr -->
    <xsl:text disable-output-escaping="yes">
&lt;/tr&gt;</xsl:text>
 
	<!-- End the table if we have to -->
	<xsl:if test="$row_no = $no_of_rows">
	  <tr class="row{$no_of_rows+1}">
	  <xsl:if test="$column_no = 1">
	    <td class="number"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></td>
	  </xsl:if>
	  <td class="{$column_type}"><input name="suggestion_{$sentence_name}.{$column_no}" type="text" class="suggestion" size="1"/></td></tr>
	  <xsl:text disable-output-escaping="yes">
	    &lt;/table&gt;</xsl:text>
	</xsl:if>

  </xsl:for-each>
  <!-- TODO: is a hidden submit button required for enter key to work in a form? -->
  <div class="submit_button_block"><input class="submit_button" type="submit" value="Submit"/></div>
  </form>
</xsl:template>


<xsl:template name="handle_whitespace">
	<xsl:param name="word"/>
	<xsl:if test="$word = ''">-</xsl:if>
	<xsl:if test="not($word = '')">
		<xsl:variable name="first_char" select="substring($word,1,1)"/>
		<xsl:if test="$first_char = ' '">
			<xsl:call-template name="handle_whitespace">
				<xsl:with-param name="word" select="substring($word,2)"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>
