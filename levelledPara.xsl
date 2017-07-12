<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0">

  <xsl:template match="levelledPara">
    <div>
      <xsl:call-template name="unique-id-attr"/>
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  <xsl:template match="levelledPara/title">
    <h2>
      <xsl:apply-templates/>
    </h2>
  </xsl:template>
  <xsl:template match="levelledPara/levelledPara/title">
    <h3>
      <xsl:apply-templates/>
    </h3>
  </xsl:template>
  <xsl:template match="levelledPara/levelledPara/levelledPara/title">
    <h4>
      <xsl:apply-templates/>
    </h4>
  </xsl:template>
  <xsl:template match="levelledPara/levelledPara/levelledPara/levelledPara/title">
    <h5>
      <xsl:apply-templates/>
    </h5>
  </xsl:template>
  <xsl:template match="levelledPara/levelledPara/levelledPara/levelledPara/levelledPara/title">
    <h6>
      <xsl:apply-templates/>
    </h6>
  </xsl:template>

  <xsl:template match="levelledPara/title/text()">
    <xsl:if test="$numbered-titles">
      <xsl:apply-templates select="parent::title/parent::*" mode="number"/>
      <xsl:text> </xsl:text>
    </xsl:if>
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="levelledPara|levelledParaAlts" mode="number">
    <xsl:number level="multiple" from="dmodule" count="levelledPara|levelledParaAlts"/>
  </xsl:template>

</xsl:stylesheet>
