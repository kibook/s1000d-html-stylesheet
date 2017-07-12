<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="content">
    <body>
      <h1>
        <xsl:apply-templates select="ancestor::dmodule//dmAddressItems/dmTitle"/>
      </h1>
      <xsl:if test="$show-references-table">
        <h2>References</h2>
        <table>
          <tr>
            <th>Data module/Technical publication</th>
            <th>Title</th>
          </tr>
          <xsl:if test="not(refs)">
            <tr>
              <td>None</td>
              <td/>
            </tr>
          </xsl:if>
          <xsl:apply-templates select="refs"/>
        </table>
      </xsl:if>
      <xsl:apply-templates select="description|procedure"/>
    </body>
  </xsl:template>

</xsl:stylesheet>
