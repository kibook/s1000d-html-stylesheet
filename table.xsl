<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="table">
    <table>
      <xsl:apply-templates/>
    </table>
  </xsl:template>

  <xsl:template match="row">
    <tr>
      <xsl:apply-templates/>
    </tr>
  </xsl:template>

  <xsl:template match="thead/row/entry">
    <th>
      <xsl:apply-templates/>
    </th>
  </xsl:template>

  <xsl:template match="tbody/row/entry">
    <td>
      <xsl:apply-templates/>
    </td>
  </xsl:template>

  <xsl:template match="table/title">
    <caption>
      <xsl:apply-templates/>
    </caption>
  </xsl:template>

</xsl:stylesheet>
