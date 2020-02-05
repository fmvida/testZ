<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" />
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates select="node()">
	<xsl:sort select="concat(name(),',',@*[1],',',text())"/>
	</xsl:apply-templates>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>