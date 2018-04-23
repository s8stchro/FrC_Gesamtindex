<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs"
  version="2.0">

<xsl:template match="/">
  <html>
  <body>
    <h2>Index Rerum et Personarum</h2>
    <xsl:for-each select="IndexPersRer/concept">
     <xsl:sort select="@n"/>
      <ul>
      <li>
        <b><xsl:value-of select="@n" /></b>: 
        <ul>
          <xsl:for-each select="ref/volume">
          <li>FrC #<xsl:value-of select="@n"/>:  
            <xsl:for-each select="p">
            <xsl:value-of select="@n"/>; 
              </xsl:for-each>
          </li>
            </xsl:for-each>
        </ul>
      </li>
        <ul>
          <xsl:for-each select="subconcept">
            <xsl:sort select="@n"/>
          <li><xsl:text>→ </xsl:text><b><xsl:value-of select="@n" /></b>:
          <ul>
          <xsl:for-each select="ref/volume">
          <li>FrC #<xsl:value-of select="@n"/>:  
            <xsl:for-each select="p">
            <xsl:value-of select="@n"/>; 
              </xsl:for-each>
          </li>
            </xsl:for-each>
        </ul>
          </li>
            </xsl:for-each>
        </ul>
      </ul>
      
    </xsl:for-each>
      
  </body>
  </html>

</xsl:template> 
</xsl:stylesheet>