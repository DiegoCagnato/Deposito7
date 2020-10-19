/*1- Targa e Marca delle Auto di cilindrata superiore a 2000 cc o di potenza superiore a 120 CV*/

SELECT Targa, Marca 
FROM Auto
WHERE Cilindrata > 2000 OR Potenza > 120