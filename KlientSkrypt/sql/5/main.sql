$CLS
PROMPT Menu:
PROMPT 1. Leki kupione wi�cej ni� raz
PROMPT 2. Trzech klientow kt�rzy zaplacili nawiecej za leki
PROMPT 3. Ile pracownikow obsluzylo ile recept
PROMPT 4. Najwi�cej sprzedanych syrop�w z Refundacja
PROMPT 5. Pracownik ktory sprzedal najdrozszy lek
PROMPT 6. Dostawca ktory dostarczyl zamowienie na lek=??
PROMPT 7. Osoby ponizej 18 roku zycia ktore kupily lek dla doroslych
PROMPT 8. Wypisywanie pracownika , kt�ry obs�u�y� recepte klienta kt�rego nazwisko ko�czy si� na 'a'
PROMPT 9. Sprzedane wszystkie leki refundowane i ich recepty(widok)
PROMPT A. Zamowienia na dany lek i jego ilosc, ilosc laczna po zamowieniu, oraz wartosc zamowienia
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT '?: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.sql'
PROMPT # Wcisnij ENTER #
PAUSE
@main.sql