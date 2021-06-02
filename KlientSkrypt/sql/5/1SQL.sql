PROMPT
SET ECHO ON
SELECT nazwa, count(pozycje_recept.lek_id)as ilosc
FROM lek,pozycje_recept
WHERE lek.lek_id=pozycje_recept.lek_id
GROUP BY nazwa
HAVING count(pozycje_recept.lek_id)>1;
SET ECHO OFF
PROMPT