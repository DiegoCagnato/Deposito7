/*5- Per ciascuna Assicurazione, il nome, la sede ed il numero di auto assicurate*/

SELECT Ass.Nome, Ass.Sede, COUNT(*)

FROM Assicurazione Ass JOIN Auto A ON A.CodAss = Ass.CodAss

GROUP BY Ass.Nome