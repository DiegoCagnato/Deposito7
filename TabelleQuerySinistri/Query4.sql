/*4- Targa e Nome del proprietario delle Auto assicurate presso la “SARA” e coinvolte in sinistri il

20/01/02*/

SELECT P.Nome, ACoinv.Targa

FROM AutoCoinvolte ACoinv JOIN Proprietario P JOIN Assicurazione Ass JOIN Sinistro S JOIN Auto A
     ON (ACoinv.CodS = S.CodS AND P.CodFiscale = A.CodFiscaleProprietario AND A.Targa = ACoinv.Targa AND Ass.CodAss = A.CodAss)

WHERE S.DataSinistro = '2020-01-02' AND Ass.Nome = 'SARA'