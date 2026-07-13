SET SERVEROUTPUT ON -- codigo para que apareça o print na saida do script --
DECLARE
    a number;
    b number;
Begin
    a := 0;
    b := null; -- existem duas formas de ser nulo escrevendo null ou apagando essa linha do codigo por completo --
    CASE
    when a = b then
        dbms_output.put_line('a igual a b');
    when a > b then
        dbms_output.put_line('a maior que b');
    when a < b then
        dbms_output.put_line('a menor que b');
    when(a is null or b is null)then -- um dos valores são nulos? --
        dbms_output.put_line('Pelo menos um dos valores é NULL');
    else
        dbms_output.put_line('ooooooops');
    END CASE;
End;
/
--------------------------------------------------------------------------------
DECLARE
    a number;
    b number;
Begin
    a := null;
    b := null; -- existem duas formas de ser nulo escrevendo null ou apagando essa linha do codigo por completo --
    CASE
    when a = b then
        dbms_output.put_line('a igual a b');
    when a > b then
        dbms_output.put_line('a maior que b');
    when a < b then
        dbms_output.put_line('a menor que b');
    when(a is null AND b is null)then -- os dois valores são nulos? --
        dbms_output.put_line('Os dois valores são nulos');
    else
        dbms_output.put_line('ooooooops');
    END CASE;
End;
/
