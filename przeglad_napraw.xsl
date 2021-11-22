<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/przeglad_napraw">

    <html>
        <body>
            <h2>przeglad napraw</h2>
            
            <table border = "1">    
                <tr bgcolor="lightgrey">
                    <th>id</th>
                    <th>Urządzenie</th>
                    <th>Usterka</th>
                    <th>Cena</th>
                    <th>Folia ochronna</th>
                    <th>Typ naprawy</th>
                    <th>Opis główny</th>
                    <th>Opis wewnętrzny</th>
                    <th>imei</th>
                </tr>
                <xsl:for-each select = "naprawa"/>
                <tr>
                        <td><xsl:value-of select = "id"/></td>
                        <td><xsl:value-of select = "urzadzenie"/></td>
                        <td><xsl:value-of select = "usterka"/></td>
                        <td><xsl:value-of select = "cena"/></td>
                        <td><xsl:value-of select = "folia_ochronna"/></td>
                        <td><xsl:value-of select = "typ_naprawy"/></td>
                        <td><xsl:value-of select = "opis_glowny"/></td>
                        <td><xsl:value-of select = "opis_wewnetrzny"/></td>
                        <td><xsl:value-of select = "imei"/></td>
                        <td><xsl:value-of select = "kod_blokady"/></td>
                </tr>
            </table> 
            <title>Dane Klienta</title>
            <table border = "1">
            <tr bgcolor="lightgray">
                    <th>Imie</th>
                    <th>Nazwisko</th>
                    <th>Numer telefonu</th>
                    <th>Kod pocztow</th>
                    <th>Miasto</th>
                    <th>Ulica</th>
                    <th>Nr domu</th>
                </tr>

            <xsl:for-each select = "naprawa"/>
                <tr>
                    <td><xsl:value-of select = "imie"/></td>
                    <td><xsl:value-of select = "nazwisko"/></td>
                    <td><xsl:value-of select = "numer_telefonu"/></td>
                    <td><xsl:value-of select = "kod_pocztowy"/></td>
                    <td><xsl:value-of select = "miasto"/></td>
                    <td><xsl:value-of select = "ulica"/></td>
                    <td><xsl:value-of select = "nr_domu"/></td>
                </tr>        
            </table>
            <title>Zakonczenie naprawy</title>

            <table border="1">
                <tr bgcolor="lightgray">
                    <th>Data</th>
                    <th>Godzina</th>
                </tr>
            <xsl:for-each select = "naprawa"/>
                <tr>
                    <td><xsl:value-of select = "data"/></td>
                    <td><xsl:value-of select = "godzina"/></td>
                </tr>
                       
            </table>

        </body>
    </html>
</xsl:template>
</xsl:stylesheet>                    
                 