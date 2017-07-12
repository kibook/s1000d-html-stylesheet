<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="dmCode">
    <xsl:value-of select="@modelIdentCode"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@systemDiffCode"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@systemCode"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@subSystemCode"/>
    <xsl:value-of select="@subSubSystemCode"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@assyCode"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@disassyCode"/>
    <xsl:value-of select="@disassyCodeVariant"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@infoCode"/>
    <xsl:value-of select="@infoCodeVariant"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@itemLocationCode"/>
    <xsl:if test="@learnCode">
      <xsl:text>-</xsl:text>
      <xsl:value-of select="@learnCode"/>
      <xsl:value-of select="@learnEventCode"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match="issueInfo">
    <xsl:value-of select="@issueNumber"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@inWork"/>
  </xsl:template>

  <xsl:template match="language">
    <xsl:value-of select="@languageIsoCode"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@countryIsoCode"/>
  </xsl:template>

  <xsl:template match="identExtension">
    <xsl:value-of select="@extensionProducer"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="@extensionProducer"/>
  </xsl:template>

  <xsl:template match="dmIdent|dmRefIdent">
    <xsl:if test="identExtension">
      <xsl:apply-templates select="identExtension"/>
      <xsl:text>-</xsl:text>
    </xsl:if>
    <xsl:apply-templates select="dmCode"/>
    <xsl:if test="issueInfo">
      <xsl:text>_</xsl:text>
      <xsl:apply-templates select="issueInfo"/>
    </xsl:if>
    <xsl:if test="language">
      <xsl:text>_</xsl:text>
      <xsl:apply-templates select="language"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
