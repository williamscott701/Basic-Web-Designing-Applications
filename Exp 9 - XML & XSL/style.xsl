<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Student's Marks Sheet</title>
            <script type="text/javascript">
                a = self.location.search;
		alert(a);
            </script>
        </head>
        <body background="6.jpg" color="white" style="color: white; font-family: arial; background-attachment: fixed;">
            <h1 align="center" style="color: white;">
                Students Marks Sheet
            </h1>
            <div align="center">
                Sorted by Name</div>
            <br />
            <table border="1" align="center" cellpadding="5">
                <tr>
                    <th>
                        Student Name<input type="radio" name="sort" id="name" value="name" onclick="change()" />
                    </th>
                    <th>
                        Mathematics<input type="radio" name="sort" id="maths" value="maths" onclick="change()" />
                    </th>
                    <th>
                        Unix<input type="radio" name="sort" value="unix" id="unix" onclick="change()" />
                    </th>
                    <th>
                        Web<input type="radio" name="sort" value="web" id="web" onclick="change()" />
                    </th>
                    <th>
                        OS<input type="radio" name="sort" value="os" id="os" onclick="change()" />
                    </th>
                    <th>
                        TOC<input type="radio" name="sort" value="toc" id="toc" onclick="change()" />
                    </th>
                    <th>
                        Value Education<input type="radio" name="sort" value="ve" id="ve" onclick="change()" />
                    </th>
                </tr>
                <xsl:for-each select="class/row">
                    <xsl:sort select="name" />
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="maths" />
                        </td>
                        <td>
                            <xsl:value-of select="unix" />
                        </td>
                        <td>
                            <xsl:value-of select="web" />
                        </td>
                        <td>
                            <xsl:value-of select="os" />
                        </td>
                        <td>
                            <xsl:value-of select="toc" />
                        </td>
                        <td>
                            <xsl:value-of select="ve" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <br />
            <div align="center">
                Sorted by Maths Marks</div>
            <br />
            <table border="1" align="center" cellpadding="5%">
                <tr>
                    <th>
                        Student Name<input type="radio" name="sort" id="name" value="name" onclick="change()" />
                    </th>
                    <th>
                        Mathematics<input type="radio" name="sort" id="maths" value="maths" onclick="change()" />
                    </th>
                    <th>
                        Unix<input type="radio" name="sort" value="unix" id="unix" onclick="change()" />
                    </th>
                    <th>
                        Web<input type="radio" name="sort" value="web" id="web" onclick="change()" />
                    </th>
                    <th>
                        OS<input type="radio" name="sort" value="os" id="os" onclick="change()" />
                    </th>
                    <th>
                        TOC<input type="radio" name="sort" value="toc" id="toc" onclick="change()" />
                    </th>
                    <th>
                        Value Education<input type="radio" name="sort" value="ve" id="ve" onclick="change()" />
                    </th>
                </tr>
                <xsl:for-each select="class/row">
                    <xsl:sort select="maths" />
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="maths" />
                        </td>
                        <td>
                            <xsl:value-of select="unix" />
                        </td>
                        <td>
                            <xsl:value-of select="web" />
                        </td>
                        <td>
                            <xsl:value-of select="os" />
                        </td>
                        <td>
                            <xsl:value-of select="toc" />
                        </td>
                        <td>
                            <xsl:value-of select="ve" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <br />
            <div align="center">
                Sorted by Unix Marks</div>
            <br />
            <table border="1" align="center" cellpadding="5%">
                <tr>
                    <th>
                        Student Name<input type="radio" name="sort" id="name" value="name" onclick="change()" />
                    </th>
                    <th>
                        Mathematics<input type="radio" name="sort" id="maths" value="maths" onclick="change()" />
                    </th>
                    <th>
                        Unix<input type="radio" name="sort" value="unix" id="unix" onclick="change()" />
                    </th>
                    <th>
                        Web<input type="radio" name="sort" value="web" id="web" onclick="change()" />
                    </th>
                    <th>
                        OS<input type="radio" name="sort" value="os" id="os" onclick="change()" />
                    </th>
                    <th>
                        TOC<input type="radio" name="sort" value="toc" id="toc" onclick="change()" />
                    </th>
                    <th>
                        Value Education<input type="radio" name="sort" value="ve" id="ve" onclick="change()" />
                    </th>
                </tr>
                <xsl:for-each select="class/row">
                    <xsl:sort select="unix" />
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="maths" />
                        </td>
                        <td>
                            <xsl:value-of select="unix" />
                        </td>
                        <td>
                            <xsl:value-of select="web" />
                        </td>
                        <td>
                            <xsl:value-of select="os" />
                        </td>
                        <td>
                            <xsl:value-of select="toc" />
                        </td>
                        <td>
                            <xsl:value-of select="ve" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <br />
            <div align="center">
                Sorted by Web Marks</div>
            <br />
            <table border="1" align="center" cellpadding="5%">
                <tr>
                    <th>
                        Student Name<input type="radio" name="sort" id="name" value="name" onclick="change()" />
                    </th>
                    <th>
                        Mathematics<input type="radio" name="sort" id="maths" value="maths" onclick="change()" />
                    </th>
                    <th>
                        Unix<input type="radio" name="sort" value="unix" id="unix" onclick="change()" />
                    </th>
                    <th>
                        Web<input type="radio" name="sort" value="web" id="web" onclick="change()" />
                    </th>
                    <th>
                        OS<input type="radio" name="sort" value="os" id="os" onclick="change()" />
                    </th>
                    <th>
                        TOC<input type="radio" name="sort" value="toc" id="toc" onclick="change()" />
                    </th>
                    <th>
                        Value Education<input type="radio" name="sort" value="ve" id="ve" onclick="change()" />
                    </th>
                </tr>
                <xsl:for-each select="class/row">
                    <xsl:sort select="web" />
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="maths" />
                        </td>
                        <td>
                            <xsl:value-of select="unix" />
                        </td>
                        <td>
                            <xsl:value-of select="web" />
                        </td>
                        <td>
                            <xsl:value-of select="os" />
                        </td>
                        <td>
                            <xsl:value-of select="toc" />
                        </td>
                        <td>
                            <xsl:value-of select="ve" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <br />
            <div align="center">
                Sorted by OS Marks</div>
            <br />
            <table border="1" align="center" cellpadding="5%">
                <tr>
                    <th>
                        Student Name<input type="radio" name="sort" id="name" value="name" onclick="change()" />
                    </th>
                    <th>
                        Mathematics<input type="radio" name="sort" id="maths" value="maths" onclick="change()" />
                    </th>
                    <th>
                        Unix<input type="radio" name="sort" value="unix" id="unix" onclick="change()" />
                    </th>
                    <th>
                        Web<input type="radio" name="sort" value="web" id="web" onclick="change()" />
                    </th>
                    <th>
                        OS<input type="radio" name="sort" value="os" id="os" onclick="change()" />
                    </th>
                    <th>
                        TOC<input type="radio" name="sort" value="toc" id="toc" onclick="change()" />
                    </th>
                    <th>
                        Value Education<input type="radio" name="sort" value="ve" id="ve" onclick="change()" />
                    </th>
                </tr>
                <xsl:for-each select="class/row">
                    <xsl:sort select="os" />
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="maths" />
                        </td>
                        <td>
                            <xsl:value-of select="unix" />
                        </td>
                        <td>
                            <xsl:value-of select="web" />
                        </td>
                        <td>
                            <xsl:value-of select="os" />
                        </td>
                        <td>
                            <xsl:value-of select="toc" />
                        </td>
                        <td>
                            <xsl:value-of select="ve" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <br />
            <div align="center">
                Sorted by TOC Marks</div>
            <br />
            <table border="1" align="center" cellpadding="5%">
                <tr>
                    <th>
                        Student Name<input type="radio" name="sort" id="name" value="name" onclick="change()" />
                    </th>
                    <th>
                        Mathematics<input type="radio" name="sort" id="maths" value="maths" onclick="change()" />
                    </th>
                    <th>
                        Unix<input type="radio" name="sort" value="unix" id="unix" onclick="change()" />
                    </th>
                    <th>
                        Web<input type="radio" name="sort" value="web" id="web" onclick="change()" />
                    </th>
                    <th>
                        OS<input type="radio" name="sort" value="os" id="os" onclick="change()" />
                    </th>
                    <th>
                        TOC<input type="radio" name="sort" value="toc" id="toc" onclick="change()" />
                    </th>
                    <th>
                        Value Education<input type="radio" name="sort" value="ve" id="ve" onclick="change()" />
                    </th>
                </tr>
                <xsl:for-each select="class/row">
                    <xsl:sort select="toc" />
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="maths" />
                        </td>
                        <td>
                            <xsl:value-of select="unix" />
                        </td>
                        <td>
                            <xsl:value-of select="web" />
                        </td>
                        <td>
                            <xsl:value-of select="os" />
                        </td>
                        <td>
                            <xsl:value-of select="toc" />
                        </td>
                        <td>
                            <xsl:value-of select="ve" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <br />
            <div align="center">
                Sorted by VE Marks</div>
            <br />
            <table border="1" align="center" cellpadding="5%">
                <tr>
                    <th>
                        Student Name<input type="radio" name="sort" id="name" value="name" onclick="change()" />
                    </th>
                    <th>
                        Mathematics<input type="radio" name="sort" id="maths" value="maths" onclick="change()" />
                    </th>
                    <th>
                        Unix<input type="radio" name="sort" value="unix" id="unix" onclick="change()" />
                    </th>
                    <th>
                        Web<input type="radio" name="sort" value="web" id="web" onclick="change()" />
                    </th>
                    <th>
                        OS<input type="radio" name="sort" value="os" id="os" onclick="change()" />
                    </th>
                    <th>
                        TOC<input type="radio" name="sort" value="toc" id="toc" onclick="change()" />
                    </th>
                    <th>
                        Value Education<input type="radio" name="sort" value="ve" id="ve" onclick="change()" />
                    </th>
                </tr>
                <xsl:for-each select="class/row">
                    <xsl:sort select="ve" />
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="maths" />
                        </td>
                        <td>
                            <xsl:value-of select="unix" />
                        </td>
                        <td>
                            <xsl:value-of select="web" />
                        </td>
                        <td>
                            <xsl:value-of select="os" />
                        </td>
                        <td>
                            <xsl:value-of select="toc" />
                        </td>
                        <td>
                            <xsl:value-of select="ve" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <br />
            <div style="line-height: 190%; font-size: 1.4em; font-family: Calibri Light; font-weight: 600;
                color: black; text-align: center; text-shadow: 1px 1px 4px #ffffff;">
                Developed by WS</div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>