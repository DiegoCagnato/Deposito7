/*7- Per ciascuna auto coinvolta in più di un sinistro, la targa dell’auto, il nome dell’ Assicurazione 
ed il totale dei danni riportati*/

SELECT ACoinv.Targa, Ass.Nome, SUM(ACoinv.ImportoDelDanno) AS TotaleDanni

FROM AutoCoinvolte ACoinv JOIN Assicurazione Ass JOIN Auto A
     ON (ACoinv.Targa = A.Targa AND A.CodAss = Ass.CodAss)
     
GROUP BY ACoinv.Targa

HAVING COUNT(*) >= 2
