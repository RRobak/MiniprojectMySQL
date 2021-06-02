SET ECHO ON
drop table pracownik_log;
CREATE TABLE pracownik_log ( log_date DATE, action VARCHAR2(50));

CREATE OR REPLACE TRIGGER pracownik_log
  AFTER INSERT OR UPDATE OR DELETE
  ON pracownik
DECLARE
  log_action  pracownik_log.action%TYPE;
BEGIN
  IF INSERTING THEN
    log_action := 'Insert';
  ELSIF UPDATING THEN
    log_action := 'Update';
  ELSIF DELETING THEN
    log_action := 'Delete';
  ELSE
    DBMS_OUTPUT.PUT_LINE('Błąd programu!');
  END IF;

  INSERT INTO pracownik_log (log_date, action)
    VALUES (SYSDATE, log_action);
END;

CREATE OR REPLACE
TRIGGER id_trigger
BEFORE INSERT ON lek
FOR EACH ROW
BEGIN
  :NEW.lek_id := lek_seq.NEXTVAL;
END;


CREATE OR REPLACE TRIGGER zmiany_leku_trigger 
   AFTER UPDATE OR INSERT  
   ON lek
BEGIN  
   wyswietl_zmiany_lek;  
END; 

CREATE OR REPLACE TRIGGER wiek_pracownika_trg
BEFORE INSERT
  on klient
  FOR EACH ROW 
DECLARE
wiek_klienta number;
BEGIN
SELECT wiek
   INTO wiek_klienta FROM klient;
    IF (wiek_klienta < 18) THEN
      RAISE_APPLICATION_ERROR(-69,'Wiek klienta musi być większy niż 18.');
    END IF;
END;
CREATE OR REPLACE TRIGGER before_insert
BEFORE Insert
  on lek
  FOR EACH ROW 

DECLARE
nowa_cena number(6);
BEGIN
  SELECT cena INTO nowa_cena FROM lek;
  :NEW.cena := nowa_cena*1.01;
END;
SET ECHO OFF