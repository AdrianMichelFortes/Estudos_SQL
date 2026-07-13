SET SERVEROUTPUT ON 
ACCEPT p_nome PROMPT 'Digite o nome do funcionario...'
ACCEPT p_sal_mes PROMPT 'Digite o valor do salario...'

Declare
        v_nome varchar2(30) := '&p_nome';
        v_sal number(9,2)   := &p_sal_mes;  
        v_sal_anual number (9,2);
Begin
    v_sal_anual :=  v_sal * 12;
    DBMS_output.put_line('O salario anual de: ' || v_nome || ' é ' || v_sal_anual) ;
END;
/   