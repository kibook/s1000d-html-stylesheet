<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template name="object-id">
    <xsl:param name="object" select="."/>
    <xsl:value-of select="generate-id($object)"/>
  </xsl:template>

  <xsl:template name="unique-id-attr">
    <xsl:attribute name="id">
      <xsl:call-template name="object-id"/>
    </xsl:attribute>
  </xsl:template>

</xsl:stylesheet>
