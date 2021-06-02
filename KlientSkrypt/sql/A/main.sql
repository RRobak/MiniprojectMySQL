SET ECHO ON

CREATE OR REPLACE VIEW Leki_refundowane as
select distinct lek.nazwa, lek.cena, lek.refundacja,(lek.cena/2) as cena_po_refundacji, recepta.recepta_id
From lek, recepta,pozycje_recept
Where refundacja='TAK'
and pozycje_recept.lek_id=lek.lek_id
and recepta.recepta_id=pozycje_recept.recepta_id;

CREATE OR REPLACE VIEW Dostawa as select distinct
lek.nazwa, lek.ilosc, (lek.ilosc+zamowienie.ilosc) as ilosc_po_zamowieniu,zamowienie.ilosc as ilosc_na_zamowieniu, (zamowienie.ilosc*lek.cena) as wartosc
from lek, zamowienie;

SET ECHO OFF