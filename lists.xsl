<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="randomList">
    <xsl:apply-templates select="title"/>
    <ul>
      <xsl:apply-templates select="listItem"/>
    </ul>
  </xsl:template>

  <xsl:template match="listItem">
    <li>
      <xsl:apply-templates/>
    </li>
  </xsl:template>

  <xsl:template match="definitionList">
    <xsl:apply-templates select="title"/>
    <dl>
      <xsl:apply-templates select="definitionListItem"/>
    </dl>
  </xsl:template>

  <xsl:template match="listItemTerm">
    <dt>
      <xsl:apply-templates/>
    </dt>
  </xsl:template>

  <xsl:template match="listItemDefinition">
    <dd>
      <xsl:apply-templates/>
    </dd>
  </xsl:template>

</xsl:stylesheet>
