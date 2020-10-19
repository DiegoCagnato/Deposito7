/*2- Nome del proprietario e Targa delle Auto di cilindrata superiore a 2000 cc oppure di potenza

superiore a 120 CV */

SELECT P.Nome, A.Targa

FROM Auto A JOIN Proprietario P ON A.CodFiscaleProprietario = P.CodFiscale

WHERE A.Potenza > 120 OR A.Cilindrata > 2000
