PROMPT PODAJ ID LEKU
ACCEPT zm NUMBER DEFAULT '0' PROMPT '?: '
$CLS

SELECT  zamowienie.zamowienie_id,zamowienie.dostawca_id,dostawca.czas_dostawy__dni, lek.lek_id, lek.nazwa, 
case when lek.ilosc>30 then'TAK'
else 'NIE' END as potrzebne
from  zamowienie join lek on zamowienie.lek_id=lek.lek_id
join dostawca on zamowienie.dostawca_id=dostawca.dostawca_id
where zamowienie.lek_id=&zm;