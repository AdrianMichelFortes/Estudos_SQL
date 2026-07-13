SET SERVEROUTPUT ON -- o metodo Goto deve ser evitado, dar preferencia aos metodos Loop, For, While --

declare
        Fatorial number := 1;
        N number;
        I number := 0;

begin 
        N:= 5; -- 5!fatorial se multiplica por ele mesmo  =5*4*3*2*1 = 120 --
        I:= N;
        <<Inicio_Loop>>
        If I>=1 then
                Fatorial :=Fatorial*I;
                I:= I-1;
                Goto Inicio_Loop;
        End IF;
        Dbms_output.put_line('O Fatorial de 5 é: '|| Fatorial);
End;
/
--------------------------------------------------------------------------------             