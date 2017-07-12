<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0">

  <xsl:param name="numbered-titles" select="false()"/>
  <xsl:param name="show-references-table" select="false()"/>
  <xsl:param name="reference-resolver" select="false()"/>
  <xsl:param name="extra-header-tags" select="false()"/>

  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <xsl:apply-templates/>
    </html>
  </xsl:template>

  <xsl:include href="identAndStatusSection.xsl"/>
  <xsl:include href="content.xsl"/>
  <xsl:include href="levelledPara.xsl"/>
  <xsl:include href="table.xsl"/>
  <xsl:include href="lists.xsl"/>
  <xsl:include href="refs.xsl"/>
  <xsl:include href="dmIdent.xsl"/>
  <xsl:include href="issueDate.xsl"/>
  <xsl:include href="dmTitle.xsl"/>
  <xsl:include href="enterpriseName.xsl"/>
  <xsl:include href="para.xsl"/>
  <xsl:include href="title.xsl"/>
  <xsl:include href="internalRef.xsl"/>
  <xsl:include href="dmRef.xsl"/>
  <xsl:include href="externalPubRef.xsl"/>
  <xsl:include href="verbatimText.xsl"/>
  <xsl:include href="create-link.xsl"/>
  <xsl:include href="id.xsl"/>
  <xsl:include href="emphasis.xsl"/>
  <xsl:include href="figure.xsl"/>
</xsl:stylesheet>
