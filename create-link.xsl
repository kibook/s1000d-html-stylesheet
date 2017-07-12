<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:xlink="http://www.w3.org/1999/xlink">

  <xsl:template name="create-link">
    <a href="{@xlink:href}">
      <xsl:attribute name="target">
        <xsl:choose>
          <xsl:when test="behavior/@linkShow = 'newPane'">_blank</xsl:when>
          <xsl:otherwise>_self</xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>
      <xsl:apply-templates/>
    </a>
  </xsl:template>

</xsl:stylesheet>
