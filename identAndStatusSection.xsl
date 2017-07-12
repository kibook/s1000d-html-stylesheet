<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0">

  <xsl:template match="identAndStatusSection">
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <meta name="author">
        <xsl:attribute name="content">
          <xsl:apply-templates select="dmStatus/originator"/>
        </xsl:attribute>
      </meta>
      <meta name="date">
        <xsl:attribute name="content">
          <xsl:apply-templates select="dmAddress/dmAddressItems/issueDate"/>
        </xsl:attribute>
      </meta>
      <xsl:if test="$extra-header-tags">
        <xsl:copy-of select="$extra-header-tags"/>
      </xsl:if>
      <title>
        <xsl:apply-templates select="dmAddress/dmAddressItems/dmTitle"/>
      </title>
    </head>
  </xsl:template>

</xsl:stylesheet>
