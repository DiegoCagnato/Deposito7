/*6- Per ciascuna auto “Fiat”, la targa dell’auto ed il numero di sinistri in cui è stata coinvolta*/

SELECT A.Marca, A.Targa, COUNT(ACoinv.Targa) AS NumeroSinistri

FROM Auto A LEFT JOIN AutoCoinvolte ACoinv
     ON A.Targa = ACoinv.Targa 
WHERE A.Marca = 'Fiat'
GROUP BY ACoinv.Targa