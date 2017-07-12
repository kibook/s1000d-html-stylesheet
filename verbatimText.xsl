<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="verbatimText">
    <pre>
      <xsl:apply-templates/>
    </pre>
  </xsl:template>

</xsl:stylesheet>
