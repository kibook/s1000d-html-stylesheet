<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="dmRef">
    <xsl:variable name="ref">
      <xsl:apply-templates select="dmRefIdent"/>
    </xsl:variable>
    <xsl:choose>
      <xsl:when test="$reference-resolver">
        <a href="{concat($reference-resolver, '?', $ref)}">
          <xsl:value-of select="$ref"/>
        </a>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$ref"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
