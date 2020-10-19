/*9- La targa delle auto che non sono state coinvolte in sinistri dopo il 20/01/01*/

SELECT A.Targa

FROM Auto A LEFT JOIN (AutoCoinvolte ACoinv JOIN Sinistro S)
       ON ACoinv.Targa = A.Targa AND S.CodS = ACoinv.CodS
       
WHERE   DataSinistro < '2020-01-01' OR DataSinistro = '(NULL)'

