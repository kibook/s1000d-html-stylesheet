<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0">

  <xsl:template match="externalPubRef[@xlink:href]">
    <xsl:call-template name="create-link"/>
  </xsl:template>

  <xsl:template match="externalPubRefIdent">
    <xsl:choose>
      <xsl:when test="externalPubTitle">
        <xsl:apply-templates select="externalPubTitle"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="externalPubCode"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
