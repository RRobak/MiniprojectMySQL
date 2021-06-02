PROMPT
SET ECHO ON
SELECT * FROM (SELECT pracownik.imie, pracownik.nazwisko, (select sum(lek.cena) from lek, pozycje_recept
                                            Where lek.lek_id=pozycje_recept.lek_id
                                            and pozycje_recept.recepta_id=recepta.recepta_id
                                            and pracownik.pracownik_id=recepta.pracownik_id
                                            )as cena
from pracownik, recepta
where pracownik.pracownik_id=recepta.pracownik_id
order by cena desc, pracownik.imie asc,pracownik.nazwisko asc) WHERE ROWNUM=1;
SET ECHO OFF
PROMPT