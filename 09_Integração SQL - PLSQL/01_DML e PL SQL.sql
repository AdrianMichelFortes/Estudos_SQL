SET SERVEROUTPUT ON 
CREATE TABLE FILMES (
    filme_id Number(5) primary key,
    titulo varchar2(100),
    diretor varchar2(100),
    ano Number(5),
    pais varchar2(100),
    duracao Number(5));
    
CREATE OR REPLACE PACKAGE pkg_filmes as
    Filme_Repetido Exception;
    Campo_Nulo Exception;
    PRAGMA Exception_Init(Filme_Repetido,-1);
    PRAGMA Exception_Init(Campo_Nulo, -2290);
End pkg_filmes;
/

CREATE OR REPLACE FUNCTION inclui_filme(
    filme_id Number,
    titulo varchar2,
    diretor varchar2,
    ano number,
    pais varchar2,
    duracao number
)
RETURN NUMBER
IS
    ret Number := 0;
    
BEGIN  
    BEGIN
        Insert into Filmes values(filme_id, titulo, diretor, ano, pais, duracao);
    EXCEPTION
        WHEN pkg_filmes.Filme_Repetido THEN
            ret := -1;
        WHEN pkg_filmes.Campo_Nulo THEN
            ret := -2290;
        WHEN others THEN
            ret := sqlcode;
    End;
    Return ret;
End;
/   

Declare     
    ret Number;
Begin   
    ret := inclui_filme(1, 'Caçadores da Arca Perdida', 'Steven 
Spielberg' , 1981, 'E.U.A' ,115);
    If ret = 0 then
        Dbms_output.put_line('Inclusão bem sucedida. ');
    Else
        Dbms_output.put_line('Erro na inclusão: ' || ret || ' - Filme Repetido');
    End if;
End;
/

Select * from filmes;
        