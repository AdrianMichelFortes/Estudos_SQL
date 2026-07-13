SET SERVEROUTPUT ON;

DECLARE
  dia  NUMBER := 5;          -- altere para testar outros valores (ou deixe NULL)
  nome VARCHAR2(100);
BEGIN
  nome := CASE dia -- o nome irá receber o resultado desse CASE -- 
            WHEN 1 THEN 'domingo'
            WHEN 2 THEN 'segunda-feira'
            WHEN 3 THEN 'terça-feira'
            WHEN 4 THEN 'quarta-feira'
            WHEN 5 THEN 'quinta-feira'
            WHEN 6 THEN 'sexta-feira'
            WHEN 7 THEN 'sábado'
            ELSE 'Não é um número de dia válido'
          END;

  DBMS_OUTPUT.PUT_LINE(nome);
END;
/
--------------------------------------------------------------------------------
DECLARE
  dia  NUMBER := 8;          -- altere para testar outros valores (ou deixe NULL)
  nome VARCHAR2(100);
BEGIN
  nome := CASE dia -- o nome irá receber o resultado desse CASE -- 
            WHEN 1 THEN 'domingo'
            WHEN 2 THEN 'segunda-feira'
            WHEN 3 THEN 'terça-feira'
            WHEN 4 THEN 'quarta-feira'
            WHEN 5 THEN 'quinta-feira'
            WHEN 6 THEN 'sexta-feira'
            WHEN 7 THEN 'sábado'
            ELSE 'Não é um número de dia válido'
          END;

  DBMS_OUTPUT.PUT_LINE(nome);
END;
/
--------------------------------------------------------------------------------
DECLARE
    dia  NUMBER;             
    nome VARCHAR2(15);
BEGIN
    dia :=5;   -- altere para testar (por ex. NULL, 1..7, 99)
    nome := CASE dia
            WHEN 1 THEN 'segunda'
            WHEN 2 THEN 'terça'
            WHEN 3 THEN 'quarta'
            WHEN 4 THEN 'quinta'
            WHEN 5 THEN 'sexta'
            WHEN 6 THEN 'sábado'
            WHEN 7 THEN 'domingo'
            ELSE '**erro**'
          END ||
           CASE
           WHEN dia IN (1,2,3,4,5) THEN '-feira'
           ELSE  '' 
          END;
  DBMS_OUTPUT.PUT_LINE(nome);
END;
/