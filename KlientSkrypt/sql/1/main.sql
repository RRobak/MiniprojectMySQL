SET ECHO ON
CREATE TABLE Adres(
    Adres_ID NUMBER(6) CONSTRAINT Adres_PK PRIMARY KEY,
    Ulica VARCHAR2 (30),
    Nr_domu NUMBER(6),
    Miasto VARCHAR2(30),
    Kod_pocztowy VARCHAR2(6)
);

CREATE TABLE Pracownik(
    Pracownik_ID NUMBER(6) CONSTRAINT Pracownik_PK PRIMARY KEY,
    Imie VARCHAR2(30),
    Nazwisko VARCHAR2(30),
    Wynagrodzenie NUMBER(6)CONSTRAINT Pracownik_Wynagrodzenie_nn NOT NULL,
    Stopieñ VARCHAR2(30),
    Adres_ID NUMBER(6) NOT NULL CONSTRAINT Pracownik_Adres_FK REFERENCES Adres(Adres_ID) ON DELETE CASCADE
);

CREATE TABLE Klient(
    Klient_ID Number(6) CONSTRAINT Klient_PK PRIMARY KEY,
    Imie VARCHAR2(30),
    Nazwisko VARCHAR2(30),
    Wiek NUMBER(6),
    Adres_ID NUMBER(6) NOT NULL CONSTRAINT Klient_Adres_FK REFERENCES Adres(Adres_ID) ON DELETE CASCADE
);

CREATE TABLE Lek(
    Lek_ID NUMBER(6) CONSTRAINT Lek_PK PRIMARY KEY,
    Nazwa VARCHAR2(30),
    Cena NUMBER(6,2),
    Refundacja VARCHAR2(3),
    Kategoria VARCHAR2(30),
    Ilosc NUMBER(6)
);

CREATE TABLE Dostawca(
    Dostawca_ID NUMBER(6) CONSTRAINT Dostawcy_PK PRIMARY KEY,
    Czas_Dostawy__dni NUMBER(2),
    Maks_wielkosc_zamowienia NUMBER(6)
);

CREATE TABLE Zamowienie(
    Zamowienie_ID NUMBER(6) CONSTRAINT Zamowienie_PK PRIMARY KEY,
    Lek_ID NUMBER(6) NOT NULL CONSTRAINT Zamowienie_Lek_FK REFERENCES Lek(Lek_ID) ON DELETE CASCADE,
    Ilosc NUMBER(6) CONSTRAINT Zamowienie_Ilosc_nn NOT NULL,
    Dostawca_ID NUMBER(6) NOT NULL CONSTRAINT Zamowienie_Dostawca_FK REFERENCES Dostawca(Dostawca_ID) ON DELETE CASCADE
);

CREATE TABLE Stosowanie(
    Stosowanie_ID NUMBER(6) CONSTRAINT Stosowanie_PK PRIMARY KEY,
    Lek_ID NUMBER(6) NOT NULL CONSTRAINT Stosowanie_Lek_FK REFERENCES Lek(Lek_ID) ON DELETE CASCADE,
    Grupa_wiekowa VARCHAR2(30),
    Dawkowanie_dzienne NUMBER(6) CONSTRAINT Stosowanie_dawkowanie_ch CHECK (Dawkowanie_dzienne BETWEEN 1 AND 10),
    Sposob_podawania VARCHAR2(30),
    Maks_czas_podawania NUMBER(6)
);
 CREATE TABLE Recepta (
    Recepta_ID NUMBER(6) CONSTRAINT Recepta_PK PRIMARY KEY,
    Pracownik_ID NUMBER(6) CONSTRAINT Recepta_Pracownik_FK REFERENCES Pracownik(Pracownik_ID) ON DELETE SET NULL,
    Klient_ID NUMBER(6) NOT NULL CONSTRAINT Recepta_Klient_FK REFERENCES Klient(Klient_ID) ON DELETE CASCADE,
    Data_wystawienia DATE CONSTRAINT RECEPTA_data_un UNIQUE
);

CREATE TABLE Pozycje_recept (
    Pozycje_recept_ID NUMBER(6) CONSTRAINT Pozycje_recept_PK PRIMARY KEY,
    Recepta_ID NUMBER(6) NOT NULL CONSTRAINT Pozycje_recept_Recepta_FK REFERENCES Recepta(Recepta_ID) ON DELETE CASCADE,
    Lek_ID NUMBER(6) NOT NULL CONSTRAINT Pozycje_recept_Lek_FK REFERENCES Lek(Lek_ID) ON DELETE CASCADE
);
    
SET ECHO OFF