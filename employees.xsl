<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- Match the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Details</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        font-size: 12pt;
                    }
                    th {
                        background-color: #D6EFED;
                        text-align: center;
                        border: 1pt solid #D8D9DA;
                    }
                    td {
                        border: 1pt solid #D8D9DA;
                        text-align: left;
                        padding: 8px;
                    }
                </style>
            </head>
            <body>
                <h2>Employee Details</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Employee Name</th>
                            <th>Designation</th>
                            <th>Date of Joining</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Filter employees by designation and salary range -->
                        <xsl:for-each select="employees/employee[
                            designation='Technical Writer' and 
                            (salary > 500000 and salary < 700000)
                        ]">
                            <tr>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="designation"/></td>
                                <td><xsl:value-of select="dateOfJoining"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



