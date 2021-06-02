PROMPT Podaj_ID:
ACCEPT p_Klient_id NUMBER 
PROMPT Podaj imie:
ACCEPT p_Imie VARCHAR2
PROMPT Podaj nazwisko:
ACCEPT p_Nazwisko VARCHAR2
PROMPT Podaj Wiek:
ACCEPT p_Wiek NUMBER
HOST CLS
BEGIN
   updateKlient(p_Klient_id,p_Imie, p_Nazwisko,p_Wiek);
END;