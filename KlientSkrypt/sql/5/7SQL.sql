PROMPT
SET ECHO ON
Select distinct klient.imie, klient.nazwisko, klient.wiek
from recepta join pozycje_recept  on recepta.recepta_id=pozycje_recept.recepta_id
join klient on recepta.klient_id=klient.klient_id,
lek join pozycje_recept on lek.lek_id=pozycje_recept.lek_id
join stosowanie on lek.lek_id=stosowanie.lek_id
where klient.wiek<18 and stosowanie.grupa_wiekowa='Dorosli';
SET ECHO OFF
PROMPT