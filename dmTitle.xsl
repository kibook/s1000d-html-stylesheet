<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="dmTitle">
    <xsl:apply-templates select="techName"/>
    <xsl:if test="infoName">
      <xsl:text> - </xsl:text>
      <xsl:apply-templates select="infoName"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
