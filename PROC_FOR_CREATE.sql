-- Procedury do tworzenia bazy

CREATE OR REPLACE PROCEDURE dodaj_adres(a_Ulica VARCHAR2, a_Nr_Domu NUMBER, a_Kod_Pocztowy VARCHAR2) AS BEGIN
INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy)
VALUES (Adres_seq.nextval, a_Ulica, a_Nr_Domu, Adres_seq.currval, a_Kod_Pocztowy);
END;
/
CREATE OR REPLACE PROCEDURE dodaj_dostawce(a_Czas_dostawy__dni NUMBER, a_Maks_wielkosc_zamowienia NUMBER)AS BEGIN
INSERT INTO Dostawca (Dostawca_ID, Czas_dostawy__dni, Maks_wielkosc_zamowienia)
VALUES (Dostawca_seq.nextval, a_Czas_dostawy__dni, a_Maks_wielkosc_zamowienia);
END;
/
CREATE OR REPLACE PROCEDURE dodaj_klient(a_Imie VARCHAR2, a_Nazwisko VARCHAR2, a_Wiek NUMBER, a_Adres_ID NUMBER) AS BEGIN
INSERT INTO Klient (Klient_ID, Imie, Nazwisko, Wiek, Adres_ID)
VALUES (Klient_seq.nextval,a_Imie, a_Nazwisko,a_Wiek,a_Adres_ID);
END;
/
CREATE OR REPLACE PROCEDURE dodaj_lek( a_Nazwa VARCHAR2, a_Cena NUMBER, a_Refundacja VARCHAR2, a_Kategoria VARCHAR2, a_Ilosc NUMBER) AS BEGIN
INSERT INTO Lek (Lek_ID, Nazwa, Cena, Refundacja, Kategoria, Ilosc)
VALUES (Lek_seq.nextval,a_Nazwa, a_Cena, a_Refundacja,a_Kategoria, a_Ilosc);
END;
/
CREATE OR REPLACE PROCEDURE dodaj_pracownik(a_Imie VARCHAR2, a_Nazwisko VARCHAR2, a_Wynagrodzenie NUMBER, a_Stopieñ VARCHAR2, a_Adres_ID NUMBER) AS BEGIN
INSERT INTO Pracownik (Pracownik_ID, Imie, Nazwisko, Wynagrodzenie, Stopieñ, Adres_ID)
VALUES(Pracownik_seq.nextval,a_Imie, a_Nazwisko, a_Wynagrodzenie,a_Stopieñ,a_Adres_ID);
END;
/
CREATE OR REPLACE PROCEDURE dodaj_zamowienie(a_Lek_ID NUMBER, a_Ilosc NUMBER, a_Dostawca_ID NUMBER) AS BEGIN
INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID)
VALUES(ZAMOWIENIE_SEQ.nextval,a_Lek_ID,a_Ilosc,a_Dostawca_ID);
END;
/
CREATE OR REPLACE PROCEDURE dodaj_stosowanie(a_Lek_ID NUMBER, a_Grupa_wiekowa VARCHAR2, a_Dawkowanie_dzienne NUMBER,a_Sposob_podawania VARCHAR2,a_Maks_czas_podawania NUMBER) AS BEGIN
INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,a_Lek_ID,a_Grupa_wiekowa,a_Dawkowanie_dzienne,a_Sposob_podawania,a_Maks_czas_podawania);
END;
/
CREATE OR REPLACE PROCEDURE dodaj_recepta(a_Pracownik_ID NUMBER, a_Klient_ID NUMBER,a_Data_wystawienia DATE) AS BEGIN
INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,a_Pracownik_ID,a_Klient_ID,TO_DATE(a_Data_wystawienia));
END;
/
CREATE OR REPLACE PROCEDURE dodaj_pozycje(a_Recepta_ID NUMBER,a_Lek_ID NUMBER) AS BEGIN
INSERT INTO Pozycje_recept(Pozycje_recept_ID,Recepta_ID,Lek_ID)
VALUES(POZYCJE_RECEPT_SEQ.nextval,a_Recepta_ID,a_Lek_ID);
END;
/