/*3- Targa e Nome del proprietario delle Auto di cilindrata superiore a 2000 cc oppure di potenza

superiore a 120 CV, assicurate presso la “SARA” */

SELECT P.Nome, A.Targa

FROM Auto A JOIN Proprietario P JOIN Assicurazione Ass ON (A.CodFiscaleProprietario = P.CodFiscale AND Ass.CodAss = A. CodAss)

WHERE (A.Potenza > 120 OR A.Cilindrata > 2000) AND Ass.Nome = 'SARA'
