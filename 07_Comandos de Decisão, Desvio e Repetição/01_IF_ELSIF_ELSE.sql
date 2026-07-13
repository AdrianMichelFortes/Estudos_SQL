SET SERVEROUTPUT ON -- codigo para que apareça o print na saida do script --

-- a igual a b --
DECLARE
    a number;
    b number;
Begin
    a := 0;
    b := 0;
    
    If a = b then
        dbms_output.put_line('a igual a b');
    elsif a > b then
        dbms_output.put_line('a maior que b');
    elsif a < b then
        dbms_output.put_line('a menor que b');
    else
        dbms_output.put_line('ooooooops');
    end if;
End;
/
--------------------------------------------------------------------------------
-- maior que b --
DECLARE
    a number;
    b number;
Begin
    a := 2;
    b := 0;
    
    If a = b then
        dbms_output.put_line('a igual a b');
    elsif a > b then
        dbms_output.put_line('a maior que b');
    elsif a < b then
        dbms_output.put_line('a menor que b');
    else
        dbms_output.put_line('ooooooops');
    end if;
End;
/
--------------------------------------------------------------------------------
-- menor que b --
DECLARE
    a number;
    b number;
Begin
    a := 0;
    b := 3;
    
    If a = b then
        dbms_output.put_line('a igual a b');
    elsif a > b then
        dbms_output.put_line('a maior que b');
    elsif a < b then
        dbms_output.put_line('a menor que b');
    else
        dbms_output.put_line('ooooooops');
    end if;
End;
/
--------------------------------------------------------------------------------
-- oooops --
DECLARE
    a number;
    b number;
Begin
    a := 0;
    b := null;
    
    If a = b then
        dbms_output.put_line('a igual a b');
    elsif a > b then
        dbms_output.put_line('a maior que b');
    elsif a < b then
        dbms_output.put_line('a menor que b');
    else
        dbms_output.put_line('ooooooops');
    end if;
End;
/
