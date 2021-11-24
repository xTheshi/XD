<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
            <h1 style="text-align:center;"> PRZEGLĄD NAPRAW </h1>
            
            <table border = "1" width="1500" align="center">    
            <xsl:for-each select="przeglad_napraw/naprawa">
                <tr>
                    <th rowspan="12" bgcolor="lightgreen">ID: <xsl:value-of select="@id"/></th>
                    <th colspan="5" bgcolor="lightgreen">OGÓLNE</th>
                </tr>
                <tr>
                    <th> URZĄDZENIE </th>
                    <th> USTERKA </th>
                    <th> CENA </th>
                    <th> FOLIA </th>
                    <th> TYP NAPRAWY </th>
                </tr>

                <tr align="center">
                    <td><xsl:value-of select="ogolne/urzadzenie"/></td>
                    <td><xsl:value-of select="ogolne/usterka"/></td>
                    <td><xsl:value-of select="ogolne/cena"/></td>
                    <td><xsl:value-of select="ogolne/folia_ochronna"/></td>
                    <td><xsl:value-of select="ogolne/typ_naprawy"/></td>
                </tr>
                <tr bgcolor="lightgrey">
                <th colspan="5"> OPIS </th>
                </tr>
                <tr>
                    <th colspan="2">OPIS GLOWNY</th>
                    <th>OPIS WEWNETRZNY</th>
                    <th>IMEI</th>
                    <th>KOD BLOKADY</th>
                </tr>
                <tr align="center">
                    <td colspan="2" text="center"><xsl:value-of select="opis/opis_glowny"/></td>
                    <td><xsl:value-of select="opis/opis_wewnetrzny"/></td>
                    <td><xsl:value-of select="opis/imei"/></td>
                    <td><xsl:value-of select="opis/kod_blokady"/></td>
                </tr>
                <tr bgcolor="lightgray">
                    <th colspan="5"> DANE KLIENTA </th>
                    </tr>
                <tr>
                   <th>IMIĘ</th>
                   <th>NAZWISKO</th>
                   <th>NUMER TELEFONU</th>
                   <th colspan="2">ADRES</th>
                </tr>
                <tr align="center">
                    <td><xsl:value-of select="dane_klienta/imie"/></td>
                    <td><xsl:value-of select="dane_klienta/nazwisko"/></td>
                    <td><xsl:value-of select="dane_klienta/numer_telefonu"/></td>
                    <td colspan="2"><xsl:value-of select="dane_klienta/adres"/></td>
                </tr>
                <tr bgcolor="lightgray">
                    <th colspan="5"> ZAKOŃCZENIE NAPRAWY </th>
                </tr>
                <tr>
                    <th colspan="3">DATA</th>
                    <th colspan="2">GODZINA</th>
                </tr>
                <tr align="center">
                    <td colspan="3"><xsl:value-of select="zakonczenie_naprawy/data"/></td>
                    <td colspan="2"><xsl:value-of select="zakonczenie_naprawy/godzina"/></td>
                </tr>
            </table> 
        </xsl:for-each>
        </body>
        </html>
</xsl:template>
</xsl:stylesheet>