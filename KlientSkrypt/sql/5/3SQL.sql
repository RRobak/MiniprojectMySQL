PROMPT 
SET ECHO ON
SELECT distinct pracownik.imie, pracownik.nazwisko,(select count(recepta.pracownik_id) from recepta
                                            where recepta.pracownik_id=pracownik.pracownik_id
                                            )as ilosc
from pracownik,recepta
where pracownik.pracownik_id=recepta.pracownik_id
order by ilosc desc,pracownik.nazwisko asc, pracownik.imie asc;
SET ECHO OFF
PROMPT