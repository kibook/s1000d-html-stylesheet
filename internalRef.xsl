<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="internalRef">
    <xsl:variable name="target-id" select="@internalRefId"/>
    <xsl:variable name="target" select="ancestor::dmodule//*[@id=$target-id]"/>
    <xsl:variable name="target-object-id">
      <xsl:call-template name="object-id">
        <xsl:with-param name="object" select="$target"/>
      </xsl:call-template>
    </xsl:variable>
    <a href="#{$target-object-id}">
      <xsl:choose>
        <xsl:when test="$target/shortName">
          <xsl:apply-templates select="$target/shortName"/>
        </xsl:when>
        <xsl:when test="$target/name">
          <xsl:apply-templates select="$target/name"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:choose>
            <xsl:when test="@internalRefTargetType='irtt01' or name($target)='figure' or name($target)='figureAlts' or name($target)='multimedia'">
              <xsl:text>Fig</xsl:text>
            </xsl:when>
            <xsl:when test="@internalRefTargetType='irtt02' or name($target)='table'">
              <xsl:text>Table</xsl:text>
            </xsl:when>
            <xsl:when test="@internalRefTargetType='irtt07' or name($target)='levelledPara' or name($target)='levelledParaAlts'">
              <xsl:text>Para</xsl:text>
            </xsl:when>
            <xsl:when test="@internalRefTargetType='irtt08' or name($target)='proceduralStep' or name($target)='proceduralStepAlts'">
              <xsl:text>Step</xsl:text>
            </xsl:when>
          </xsl:choose>
          <xsl:text> </xsl:text>
          <xsl:apply-templates select="$target" mode="number"/>
        </xsl:otherwise>
      </xsl:choose>
    </a>
  </xsl:template>

</xsl:stylesheet>
