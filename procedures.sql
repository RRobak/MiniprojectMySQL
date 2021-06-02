--1. procedura do wyzwalacza

CREATE OR REPLACE PROCEDURE wyswietl_zmiany_lek
IS  
BEGIN  
   DBMS_OUTPUT.put_line (CASE  
                            WHEN UPDATING ('cena') THEN 'UPDATE cena'  
                            WHEN UPDATING THEN 'UPDATE'  
                            WHEN INSERTING THEN 'INSERT'  
                            WHEN DELETING THEN 'DELETE'  
                            ELSE 'Nie udało się wykonać procedury!!!'  
                         END);  
END; 

--2. Podmienia dane w tabeli klient na wprowadzone

create or replace procedure updateKlient(
        p_Klient_id in klient.Klient_id%type,
        p_Imie in klient.Imie%type,
        p_Nazwisko in klient.Nazwisko%type,
        p_Wiek in klient.Wiek%type)
is
Begin
     UPDATE klient SET Imie = p_Imie where klient_id = p_Klient_id;
     UPDATE klient SET Nazwisko = p_Nazwisko where klient_id = p_Klient_id;
     UPDATE klient SET Wiek = p_Wiek where klient_id = p_Klient_id;
  COMMIT;

END;

BEGIN
   updateKlient(1,'MATEUSZ', 'WAJCHA',20);
END;



--3. Wyswietla dane klienta
CREATE OR REPLACE PROCEDURE showContact(
    pklient_id NUMBER 
)
IS
  pklient klient%ROWTYPE;
BEGIN
  SELECT *
  INTO pklient
  FROM klient
  WHERE klient_id = pklient_id;
  dbms_output.put_line( pklient.imie|| ' ' ||
  pklient.nazwisko || '<' || pklient.wiek ||'>' );
 
EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;
