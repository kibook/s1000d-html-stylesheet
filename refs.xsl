<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0">

  <xsl:template match="refs">
    <xsl:apply-templates mode="refs"/>
  </xsl:template>

  <xsl:template match="externalPubRef" mode="refs">
    <tr>
      <xsl:apply-templates select="externalPubRefIdent" mode="refs"/>
    </tr>
  </xsl:template>

  <xsl:template match="dmRef" mode="refs">
    <tr>
      <td>
        <xsl:apply-templates select="."/>
      </td>
      <td>
        <xsl:apply-templates select="dmRefAddressItems/dmTitle"/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="externalPubRefIdent" mode="refs">
    <td>
      <xsl:choose>
        <xsl:when test="../@xlink:href">
          <a href="{../@xlink:href}">
            <xsl:apply-templates select="externalPubCode"/>
          </a>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="externalPubCode"/>
        </xsl:otherwise>
      </xsl:choose>
    </td>
    <td>
      <xsl:apply-templates select="externalPubTitle"/>
    </td>
  </xsl:template>

</xsl:stylesheet>
