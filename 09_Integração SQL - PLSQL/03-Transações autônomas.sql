create table tab1 (
    a1 number,
    b2 number
);

Create table tab2 (
    b1 number,
    b2 number
);

create or replace procedure exemplo_transacao (
    aa1 number,
    aa2 number,
    bb1 number,
    bb2 number,
    commit_ou_rollback number
)
IS
    Pragma Autonomous_transaction;
Begin
    Insert into tab1 values (aa1, bb1);
    insert into tab2 values (bb1, bb2);
    if commit_ou_rollback = 1 then
        commit;
    else
        rollback;
    end if;
end;


/
begin
    exemplo_transacao(1, 2, 10, 20, 1);
    exemplo_transacao(3, 4, 30, 40, 0);
    exemplo_transacao(5, 6, 50, 60, 1);
end;
/

select * from tab1;
select * from tab2;