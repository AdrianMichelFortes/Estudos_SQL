--Uma repetição de looping--
create table teste_loop (id number, nome varchar2(10));

Declare
    v_counter               number :=1;
    v_nome             varchar2(10):='TESTE_LOOP';
BEGIN
    LOOP
        INSERT INTO teste_loop(id,nome)
        Values(v_counter, v_nome);
        v_counter := v_counter + 1;
        exit when v_counter > 5;
    end loop;
end;
/

select * from teste_loop

--------------------------------------------------------------------------------
--Duas repetições de looping--
Create table loop_aninhados(contador number, nome varchar2(100));

Declare
    v_cont1 number :=1;
    v_nome1 varchar2(100) :='Loop 1';
    v_cont2 number :=7;
    v_nome2 varchar2(100) :='Loop 2';
    
Begin
    Loop
        Insert into loop_aninhados(contador,nome)
        Values(v_cont1,v_nome1);
        v_cont1 := v_cont1 + 1;
        Exit when v_cont1 > 5;Z
    End Loop;
    Loop
        Insert into loop_aninhados(contador,nome)
        values(v_cont2,v_nome2);
        v_cont2 := v_cont2 + 1;
        Exit when v_cont2 > 9;
    End Loop;
End;
/
    
select * from loop_aninhados;