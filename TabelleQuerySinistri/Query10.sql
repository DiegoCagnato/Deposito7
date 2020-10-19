/*10- Il codice dei sinistri in cui non sono state coinvolte auto con cilindrata inferiore a 2000 cc*/

SELECT S.CodS

FROM Sinistro S JOIN Auto A JOIN AutoCoinvolte ACoinv 
     ON S.CodS = ACoinv.CodS AND ACoinv.Targa = A.Targa 
     
GROUP BY S.CodS

HAVING MIN(A.Cilindrata) >= 2000


