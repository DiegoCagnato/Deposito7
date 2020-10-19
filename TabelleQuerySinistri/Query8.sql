/*8- CodF e Nome di coloro che possiedono più di un’auto*/

SELECT P.CodFiscale, P.Nome

FROM Auto A JOIN Proprietario P
      ON A.CodFiscaleProprietario = P.CodFiscale
 
GROUP BY A.CodFiscaleProprietario  
  
HAVING COUNT(*) > 1