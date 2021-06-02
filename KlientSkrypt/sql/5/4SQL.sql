PROMPT
SET ECHO ON
Select * from (Select distinct lek.nazwa, (select count(stosowanie.Sposob_podawania) from stosowanie, pozycje_recept
                    where pozycje_recept.lek_id=lek.lek_id
                    and stosowanie.lek_id=pozycje_recept.lek_id
                    and stosowanie.sposob_podawania='Syrop'
                    and lek.refundacja='TAK'
                )as liczba
from lek,stosowanie,pozycje_recept
where stosowanie.Sposob_podawania='Syrop'
order by liczba desc,lek.nazwa asc)where rownum=1;
SET ECHO OFF
PROMPT