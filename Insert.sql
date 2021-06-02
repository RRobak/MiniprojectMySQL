INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Warszawska', 2, 'Kielce', '25-126');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Wisniowa', 5, 'Wloszczowa', '29-100');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Krakowska', 26, 'Kielce', '25-126');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Jagiellonska', 15, 'Kielce', '25-126');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Partyzantow', 110, 'Wloszczowa', '29-100');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Szkolna', 20, 'Krasocin', '29-105');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Radomska', 91, 'Krasocin', '29-105');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Swietokrzyska', 22, 'Kielce', '25-126');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Niepodleglosci', 39, 'Warszawa', '02-344');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Towarowa', 1, 'Warszawa', '02-344');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Fabryczna', 40, 'Lublin', '20-010');

INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, 'Podlaska', 76, 'Lublin', '20-010');

--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Dostawca (Dostawca_ID, Czas_dostawy__dni, Maks_wielkosc_zamowienia)
VALUES (Dostawca_seq.nextval, 5, 60);

INSERT INTO Dostawca (Dostawca_ID, Czas_dostawy__dni, Maks_wielkosc_zamowienia)
VALUES (Dostawca_seq.nextval, 3, 55);

INSERT INTO Dostawca (Dostawca_ID, Czas_dostawy__dni, Maks_wielkosc_zamowienia)
VALUES (Dostawca_seq.nextval, 7, 90);

INSERT INTO Dostawca (Dostawca_ID, Czas_dostawy__dni, Maks_wielkosc_zamowienia)
VALUES (Dostawca_seq.nextval, 8, 45);

INSERT INTO Dostawca (Dostawca_ID, Czas_dostawy__dni, Maks_wielkosc_zamowienia)
VALUES (Dostawca_seq.nextval, 1, 10);

INSERT INTO Dostawca (Dostawca_ID, Czas_dostawy__dni, Maks_wielkosc_zamowienia)
VALUES (Dostawca_seq.nextval, 4, 30);

--------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Piotr', 'Wasilewski',19, 1);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Maciej', 'Mroz',21, 2);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Kamil', 'Kukla',22, 3);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Bogdan', 'Dyk',32, 4);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Mikolaj', 'Hajduk',18, 5);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Pawel', 'Robak',16, 6);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Mateusz', 'Cejrowski',32, 7);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Aleksandra', 'Dziopa',64, 8);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Aneta', 'Lis',27, 9);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Magdalena', 'Zdeb',44, 10);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Natalia', 'Tracz',15, 11);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Karolina', 'Fatyga',82, 12);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Mieczyslaw', 'Fog',37, 1);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Klaudia', 'Kowalczyk',42, 2);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Jakub', 'Bordolinski',55, 3);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Patryk', 'Samek',63, 4);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Mikolaj', 'Pedziwiatr',25, 5);

INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval, 'Artur', 'Hamara',18,6);

--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Polopiryna', 12.99, 'NIE','Przeciwbólowe', 9);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Rutinoscorbin', 5.99, 'NIE','Witaminy', 15);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Apap', 7.99, 'NIE','Przeciwbolowe', 3);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Vicks', 50, 'TAK','Przeciwzapalne', 4);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Glukoza', 143, 'TAK','Antybiotyk', 9);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'C2H5OH', 26, 'NIE','Przeciwbolowe', 11);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Lek przeciwgrzybiczy', 65, 'TAK','Antybiotyk', 2);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Magnez', 14, 'NIE','Witaminy', 50);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Amol', 40, 'NIE','Przeciwzapalne', 28);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Augumentin', 50, 'NIE', 'Antybiotyk', 1);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Relanium', 150, 'NIE', 'Przeciwbólowe', 10);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Pavulon', 280, 'NIE', 'Antybiotyk',0);

INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval, 'Xorim', 30, 'TAK', 'Antybiotyk',20);
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'Kacper', 'Waloski', 3000,'Praktykant',10);

INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'Mateusz', 'Tuora', 4500, 'Magister',11);

INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'Kamil','Dobrzañski',3000,'Praktykant',12);

INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'Maciej','Mroz',2500,'Praktykant',2);

INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'Wiktor','Bator',5000,'Kierownik',10);

INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'£ukasz','Jurek',3000,'Magister',11);

INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'Piotr','Kowalczyk', 3500,'Magister',12);

INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,'Waldemar','Nowak',2600,'Konserwator',10);
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,6,10,3);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,10,15,1);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,1,30,2);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,7,5,5);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,9,25,6);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,3,13,2);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,8,44,4);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,2,50,3);

INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,4,33,4);
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,1,'Dorosli',3,'Syrop',7);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,2,'Dorosli',2,'Tabletki',7);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,3,'Dorosli',6,'Tabletki',7);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,4,'Dorosli',8,'Czopki',7);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,5,'Dorosli',1,'Maœæ',14);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,6,'Dorosli',2,'Syrop',14);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,7,'Dorosli',3,'Syrop',14);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,8,'Dorosli',7,'Maœæ',14);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,9,'Dorosli',8,'Czopki',10);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,10,'Dorosli',4,'Syrop',10);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,11,'Dorosli',5,'Syrop',10);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,12,'Dorosli',6,'Tabletki',10);

INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,13,'Dorosli',1,'Syrop',10);
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,2,1,TO_DATE('09-04-19'));

INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,3,2,TO_DATE('03-06-19'));

INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,4,3,TO_DATE('04-08-19'));

INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,6,4,TO_DATE('10-07-19'));

INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,7,5,TO_DATE('12-02-19'));

INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,1,6,TO_DATE('28-03-19'));

INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,1,7,TO_DATE('30-03-19'));
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,1,2);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,1,5);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,2,3);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,3,4);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,4,6);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,4,7);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,5,13);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,6,12);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,6,10);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,7,11);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,7,5);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,7,2);

INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,7,7);

--------------------------------------------------------------------------------------------------------------------------------
