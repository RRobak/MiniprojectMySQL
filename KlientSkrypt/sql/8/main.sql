SET ECHO ON
SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION obliczPremie(pracownik_xd NUMBER)
   RETURN NUMBER
   IS premia NUMBER(10,2);
BEGIN 
premia := 2;
SELECT ((select wynagrodzenie from pracownik where pracownik_id = pracownik_xd)*120/2+18/40+69*68)
INTO premia 
FROM pracownik WHERE pracownik_id = pracownik_xd;
            
RETURN premia;
END obliczPremie;
COMMIT;
SET ECHO OFF