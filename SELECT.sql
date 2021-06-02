--1.Leki kupione wiêcej ni¿ raz
SELECT nazwa, count(pozycje_recept.lek_id)as ilosc
FROM lek,pozycje_recept
WHERE lek.lek_id=pozycje_recept.lek_id
GROUP BY nazwa
HAVING count(pozycje_recept.lek_id)>1;
--2.Trzech klientow którzy zaplacili nawiecej za leki
Select * from (Select recepta.recepta_id, klient.imie,klient.nazwisko,
                            (select sum(cena) from lek,POZYCJE_RECEPT
                            where pozycje_recept.lek_id=lek.lek_id
                            and recepta.recepta_id=pozycje_recept.recepta_id
                            )as cena
from recepta, klient
where recepta.klient_id=klient.klient_id
order by cena desc,klient.nazwisko asc,klient.imie asc) where rownum<4;

--3.Ile pracownikow obsluzylo ile recept
SELECT distinct pracownik.imie, pracownik.nazwisko,(select count(recepta.pracownik_id) from recepta
                                            where recepta.pracownik_id=pracownik.pracownik_id
                                            )as ilosc
from pracownik,recepta
where pracownik.pracownik_id=recepta.pracownik_id
order by ilosc desc,pracownik.nazwisko asc, pracownik.imie asc;
--4.Najwiêcej sprzedanych syropów z Refundacja
Select * from (Select distinct lek.nazwa, (select count(stosowanie.Sposob_podawania) from stosowanie, pozycje_recept
                    where pozycje_recept.lek_id=lek.lek_id
                    and stosowanie.lek_id=pozycje_recept.lek_id
                    and stosowanie.sposob_podawania='Syrop'
                    and lek.refundacja='TAK'
                )as liczba
from lek,stosowanie,pozycje_recept
where stosowanie.Sposob_podawania='Syrop'
order by liczba desc,lek.nazwa asc)where rownum=1;
--5.Pracownik ktory sprzedal najdrozszy lek
SELECT * FROM (SELECT pracownik.imie, pracownik.nazwisko, (select sum(lek.cena) from lek, pozycje_recept
                                            Where lek.lek_id=pozycje_recept.lek_id
                                            and pozycje_recept.recepta_id=recepta.recepta_id
                                            and pracownik.pracownik_id=recepta.pracownik_id
                                            )as cena
from pracownik, recepta
where pracownik.pracownik_id=recepta.pracownik_id
order by cena desc, pracownik.imie asc,pracownik.nazwisko asc) WHERE ROWNUM=1;
--6.Dostawca ktory dostarczyl zamowienie na dany lek
SELECT  zamowienie.zamowienie_id,zamowienie.dostawca_id,dostawca.czas_dostawy__dni, lek.lek_id, lek.nazwa, 
case when lek.ilosc>30 then'TAK'
else 'NIE' END as potrzebne
from  zamowienie join lek on zamowienie.lek_id=lek.lek_id
join dostawca on zamowienie.dostawca_id=dostawca.dostawca_id
where zamowienie.lek_id=&zm;

--7.Osoby ponizej 18 roku zycia ktore kupily lek dla doroslych
Select distinct klient.imie, klient.nazwisko, klient.wiek
from recepta join pozycje_recept  on recepta.recepta_id=pozycje_recept.recepta_id
join klient on recepta.klient_id=klient.klient_id,
lek join pozycje_recept on lek.lek_id=pozycje_recept.lek_id
join stosowanie on lek.lek_id=stosowanie.lek_id
where klient.wiek<18 and stosowanie.grupa_wiekowa='Dorosli';

--8.Wypisywanie pracownika , który obs³u¿y³ recepte klienta którego nazwisko koñczy siê na 'a'

SELECT pracownik.imie, pracownik.nazwisko, klient.imie, klient.nazwisko from pracownik, klient, recepta
where pracownik.pracownik_id = recepta.recepta_id
and recepta.recepta_id = klient.klient_id
and REGEXP_LIKE (klient.nazwisko, '(*)a$')
order by pracownik.pracownik_id asc;

