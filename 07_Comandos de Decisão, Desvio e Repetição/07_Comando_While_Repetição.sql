SET SERVEROUTPUT ON

Accept p_voltas prompt 'Digita o no. de voltas do laço: '
Declare 
    v_count     number(10) := 1;
Begin
    While v_count <= &p_voltas Loop
    Dbms_output.put_line('Valor do contador...' || v_count);
    v_count := v_count +1 ;
    End Loop;
End;
/   