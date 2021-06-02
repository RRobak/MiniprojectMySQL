---------------------------------Naruszenie PK----------------------------------------------------------------------------------
INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy) VALUES (1, 'Warszawska', 2, 'Kielce', '25-126');
INSERT INTO Adres (Adres_ID, Ulica, Nr_Domu, Miasto, Kod_Pocztowy) VALUES (1, 'Wisniowa', 5, 'Wloszczowa', '29-100');
-----------------------------------NOT NULL(ILOSC)------------------------------------------------------------------------------
INSERT INTO Zamowienie (Zamowienie_ID, Lek_ID, Ilosc, Dostawca_ID) VALUES(ZAMOWIENIE_SEQ.nextval,7,NULL,5);
-----------------------CHECK(Dawkowanie_dzienne od 1 do 10)-------------------------------------------------------------------
INSERT INTO Stosowanie (Stosowanie_ID, Lek_ID, Grupa_wiekowa, Dawkowanie_dzienne,Sposob_podawania,Maks_czas_podawania)
VALUES(STOSOWANIE_SEQ.nextval,1,'Dorosli',11,'Syrop',7);
-------------------------------Unique(data wystawienia)-------------------------------------------------------------------------
INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,1,6,TO_DATE('28-03-19'));
INSERT INTO Recepta (Recepta_ID, Pracownik_ID, Klient_ID,Data_wystawienia)
VALUES(RECEPTA_SEQ.nextval,1,7,TO_DATE('28-03-19'));


