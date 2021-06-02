PROMPT
SET ECHO ON
Select * from (Select recepta.recepta_id, klient.imie,klient.nazwisko,
                            (select sum(cena) from lek,POZYCJE_RECEPT
                            where pozycje_recept.lek_id=lek.lek_id
                            and recepta.recepta_id=pozycje_recept.recepta_id
                            )as cena
from recepta, klient
where recepta.klient_id=klient.klient_id
order by cena desc,klient.nazwisko asc,klient.imie asc) where rownum<4;

SET ECHO OFF
PROMPT