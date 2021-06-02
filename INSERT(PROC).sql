EXECUTE dodaj_adres( 'Warszawska', 'Kielce', '25-126');
EXECUTE dodaj_adres( 'Wisniowa', 'Wloszczowa', '29-100');
EXECUTE dodaj_adres( 'Krakowska', 'Kielce', '25-126');
EXECUTE dodaj_adres( 'Jagiellonska', 'Kielce', '25-126');
EXECUTE dodaj_adres( 'Partyzantow', 'Wloszczowa', '29-100');
EXECUTE dodaj_adres('Szkolna','Krasocin', '29-105');
EXECUTE dodaj_adres( 'Radomska', 'Krasocin', '29-105');
EXECUTE dodaj_adres( 'Swietokrzyska', 'Kielce', '25-126');
EXECUTE dodaj_adres( 'Niepodleglosci', 'Warszawa', '02-344');
EXECUTE dodaj_adres('Towarowa', 'Warszawa', '02-344');
EXECUTE dodaj_adres( 'Fabryczna', 'Lublin', '20-010');
EXECUTE dodaj_adres( 'Podlaska', 'Lublin', '20-010');

EXECUTE dodaj_dostawce(5, 60);
EXECUTE dodaj_dostawce(3, 55);
EXECUTE dodaj_dostawce(7, 90);
EXECUTE dodaj_dostawce(8, 45);
EXECUTE dodaj_dostawce(1, 10);
EXECUTE dodaj_dostawce(4, 30);

EXECUTE dodaj_klient('Piotr', 'Wasilewski',19, 1);
EXECUTE dodaj_klient('Maciej', 'Mroz',21, 2);
EXECUTE dodaj_klient( 'Kamil', 'Kukla',22, 3);
EXECUTE dodaj_klient('Bogdan', 'Dyk',32, 4);
EXECUTE dodaj_klient('Mikolaj', 'Hajduk',18, 5);
EXECUTE dodaj_klient('Pawel', 'Robak',16, 6);
EXECUTE dodaj_klient('Mateusz', 'Cejrowski',32, 7);
EXECUTE dodaj_klient('Aleksandra', 'Dziopa',64, 8);
EXECUTE dodaj_klient('Aneta', 'Lis',27, 9);
EXECUTE dodaj_klient('Magdalena', 'Zdeb',44, 10);
EXECUTE dodaj_klient( 'Natalia', 'Tracz',15, 11);
EXECUTE dodaj_klient('Karolina', 'Fatyga',82, 12);
EXECUTE dodaj_klient('Mieczyslaw', 'Fog',37, 1);
EXECUTE dodaj_klient('Klaudia', 'Kowalczyk',42, 2);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Jakub', 'Bordolinski',55, 3);
EXECUTE dodaj_klient( 'Patryk', 'Samek',63, 4);
EXECUTE dodaj_klient( 'Mikolaj', 'Pedziwiatr',25, 5);
EXECUTE dodaj_klient('Artur', 'Hamara',18,6);

EXECUTE dodaj_lek( 'Polopiryna', 12, 'NIE','Przeciwbólowe', 9);
EXECUTE dodaj_lek( 'Rutinoscorbin', 5, 'NIE','Witaminy', 15);
EXECUTE dodaj_lek( 'Apap', 7, 'NIE','Przeciwbolowe', 3);
EXECUTE dodaj_lek( 'Vicks', 50, 'TAK','Przeciwzapalne', 4);
EXECUTE dodaj_lek( 'Glukoza', 143, 'TAK','Antybiotyk', 9);
EXECUTE dodaj_lek( 'C2H5OH', 26, 'NIE','Przeciwbolowe', 11);
EXECUTE dodaj_lek( 'Lek przeciwgrzybiczy', 65, 'TAK','Antybiotyk', 2);
EXECUTE dodaj_lek( 'Magnez', 14, 'NIE','Witaminy', 50);
EXECUTE dodaj_lek( 'Amol', 40, 'NIE','Przeciwzapalne', 28);
EXECUTE dodaj_lek(  'Augumentin', 50, 'NIE', 'Antybiotyk', 1);
EXECUTE dodaj_lek( 'Relanium', 150, 'NIE', 'Przeciwbólowe', 10);
EXECUTE dodaj_lek( 'Pavulon', 280, 'NIE', 'Antybiotyk',0);
EXECUTE dodaj_lek( 'Xorim', 30, 'TAK', 'Antybiotyk',20);

EXECUTE dodaj_pracownik('Kacper', 'Waloski', 3000,'Praktykant',10);
EXECUTE dodaj_pracownik('Mateusz', 'Tuora', 4500, 'Magister',11);
EXECUTE dodaj_pracownik('Kamil','Dobrzañski',3000,'Praktykant',12);
EXECUTE dodaj_pracownik('Maciej','Mroz',2500,'Praktykant',2);
EXECUTE dodaj_pracownik('Wiktor','Bator',5000,'Kierownik',10);
EXECUTE dodaj_pracownik('£ukasz','Jurek',3000,'Magister',11);
EXECUTE dodaj_pracownik('Piotr','Kowalczyk', 3500,'Magister',12);
EXECUTE dodaj_pracownik('Waldemar','Nowak',2600,'Konserwator',10);

EXECUTE dodaj_zamowienie(6,10,3);
EXECUTE dodaj_zamowienie(10,15,1);
EXECUTE dodaj_zamowienie(1,30,2);
EXECUTE dodaj_zamowienie(7,5,5);
EXECUTE dodaj_zamowienie(9,25,6);
EXECUTE dodaj_zamowienie(3,13,2);
EXECUTE dodaj_zamowienie(8,44,4);
EXECUTE dodaj_zamowienie(2,50,3);
EXECUTE dodaj_zamowienie(4,33,4);

EXECUTE dodaj_stosowanie(1,'Dorosli',3,'Syrop',7);
EXECUTE dodaj_stosowanie(2,'Dorosli',2,'Tabletki',7);
EXECUTE dodaj_stosowanie(3,'Dorosli',6,'Tabletki',7);
EXECUTE dodaj_stosowanie(4,'Dorosli',8,'Czopki',7);
EXECUTE dodaj_stosowanie(5,'Dorosli',1,'Maœæ',14);
EXECUTE dodaj_stosowanie(6,'Dorosli',2,'Syrop',14);
EXECUTE dodaj_stosowanie(7,'Dorosli',3,'Syrop',14);
EXECUTE dodaj_stosowanie(8,'Dorosli',7,'Maœæ',14);
EXECUTE dodaj_stosowanie(9,'Dorosli',8,'Czopki',10);
EXECUTE dodaj_stosowanie(10,'Dorosli',4,'Syrop',10);
EXECUTE dodaj_stosowanie(11,'Dorosli',5,'Syrop',10);
EXECUTE dodaj_stosowanie(12,'Dorosli',6,'Tabletki',10);
EXECUTE dodaj_stosowanie(13,'Dorosli',1,'Syrop',10);

EXECUTE dodaj_recepta(2,1,TO_DATE('09-04-19'));
EXECUTE dodaj_recepta(3,2,TO_DATE('03-06-19'));
EXECUTE dodaj_recepta(4,3,TO_DATE('04-08-19'));
EXECUTE dodaj_recepta(6,4,TO_DATE('10-07-19'));
EXECUTE dodaj_recepta(7,5,TO_DATE('12-02-19'));
EXECUTE dodaj_recepta(1,6,TO_DATE('28-03-19'));
EXECUTE dodaj_recepta(1,7,TO_DATE('30-03-19'));

EXECUTE dodaj_pozycje(1,2);
EXECUTE dodaj_pozycje(1,5);
EXECUTE dodaj_pozycje(2,3);
EXECUTE dodaj_pozycje(3,4);
EXECUTE dodaj_pozycje(4,6);
EXECUTE dodaj_pozycje(4,7);
EXECUTE dodaj_pozycje(5,13);
EXECUTE dodaj_pozycje(6,12);
EXECUTE dodaj_pozycje(6,10);
EXECUTE dodaj_pozycje(7,11);
EXECUTE dodaj_pozycje(7,5);
EXECUTE dodaj_pozycje(7,2);
EXECUTE dodaj_pozycje(7,7);


