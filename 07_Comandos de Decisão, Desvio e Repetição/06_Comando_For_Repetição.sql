-- É a estrutura de repetição mais utilizada por ser mais simples e funcional --    
Create table item (ordid number(5), itemid number(5));

declare 
    v_ordid number := 601;
begin
    For i in 1..10 Loop
        insert into item(ordid, itemid)
        values(v_ordid, i);
    End Loop;
End;
/

select * from item;

--------------------------------------------------------------------------------
-- REVERSO --
Create table item2 (ordid number(5), itemid number(5));

declare 
    v_ordid number := 602;
begin
    For i in reverse 1..10 Loop
        insert into item2(ordid, itemid)
        values(v_ordid, i);
    End Loop;
End;
/

select * from item2;