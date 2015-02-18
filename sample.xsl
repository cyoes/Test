<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:output method="xml" indent="yes" encoding="utf-8" />

    <xsl:template match="/">
        <NewXml>
            <xsl:for-each-group select="ItemList/Item" group-by="CategoryID">
                <Category>
                    <CategoryID><xsl:value-of select="CategoryID" /></CategoryID>
                    <CategoryName><xsl:value-of select="CategoryName" /></CategoryName>
                    <ItemList>
                        <xsl:for-each select="current-group()">
                            <Item>
                                <ItemName><xsl:value-of select="ItemName" /></ItemName>
                                <ItemDetails><xsl:value-of select="ItemDetails" /></ItemDetails>
                            </Item>
                        </xsl:for-each>
                    </ItemList>
                </Category>
            </xsl:for-each-group>
        </NewXml>
    </xsl:template>

</xsl:stylesheet>
