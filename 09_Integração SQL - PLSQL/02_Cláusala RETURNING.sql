Create Table pessoa 
(
codigo Number(5),
nome Varchar2(40),
status Char(1)
);

INSERT INTO PESSOA VALUES (1, 'SERGIO' ,'A')
/
INSERT INTO PESSOA VALUES (2, 'WILLIANS' ,'A')
/
INSERT INTO PESSOA VALUES (3, 'RICARDO' ,'A')
/
INSERT INTO PESSOA VALUES (4, 'SANTOS' ,'A')
/

COMMIT
/

SELECT * FROM PESSOA;

SET SERVEROUTPUT ON;
DECLARE
    v_nome pessoa.nome%TYPE;
    
BEGIN
    UPDATE pessoa
    set status = 'I'
    where codigo = 1
    Returning nome INTO v_nome;
    DBMS_OUTPUT.PUT_LINE('Nome: ' || v_nome);
END;
/

select * from pessoa;
--------------------------------------------------------------------------------
