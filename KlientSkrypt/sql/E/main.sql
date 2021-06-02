HOST CLS
PROMPT Menu:
PROMPT 1. Podmienia dane w tabeli klient na wprowadzone
PROMPT
PROMPT 2. Wyswietla dane klienta
PROMPT
PROMPT 3. Oblicz premie
PROMPT
PROMPT 0. Powrot
PROMPT
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz opcje: '
HOST CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql