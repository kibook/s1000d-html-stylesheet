<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:template match="figure">
    <figure>
      <xsl:apply-templates select="graphic"/>
      <xsl:apply-templates select="title"/>
    </figure>
  </xsl:template>

  <xsl:template match="title">
    <figcaption>
      <xsl:apply-templates/>
    </figcaption>
  </xsl:template>

  <xsl:template match="graphic">
    <img class="graphic" src="unparsed-entity-uri(@infoEntityIdent)"/>
  </xsl:template>

</xsl:stylesheet>
