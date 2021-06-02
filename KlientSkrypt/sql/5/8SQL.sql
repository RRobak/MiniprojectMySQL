PROMPT
SET ECHO ON

SELECT pracownik.imie, pracownik.nazwisko, klient.imie, klient.nazwisko from pracownik, klient, recepta
where pracownik.pracownik_id = recepta.recepta_id
and recepta.recepta_id = klient.klient_id
and REGEXP_LIKE (klient.nazwisko, '(*)a$')
order by pracownik.pracownik_id asc;

SET ECHO OFF
PROMPT