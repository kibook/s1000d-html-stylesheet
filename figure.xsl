<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:template match="figure">
    <div class="figure">
      <xsl:apply-templates select="graphic"/>
      <xsl:apply-templates select="title"/>
    </div>
  </xsl:template>

  <xsl:template match="title">
    <div class="title">
      <caption>
        <xsl:apply-templates/>
      </caption>
    </div>
  </xsl:template>

  <xsl:template match="graphic">
    <img class="graphic" src="unparsed-entity-uri(@infoEntityIdent)"/>
  </xsl:template>

</xsl:stylesheet>
