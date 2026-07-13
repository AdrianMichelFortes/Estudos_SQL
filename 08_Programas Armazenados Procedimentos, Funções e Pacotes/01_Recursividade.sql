create or replace function fatorial_func_rec (
    n in number
)
return number
is
begin
    if n = 2 then
        return 2; -- se for 2 retorna 2 --
    else
        return n * fatorial_func_rec(n - 1); -- se não entra nesse sistema até virar 2 subtraindo 1 a cada vez q ele se multiplica por ele mesmo fatorialmente  5*4*3*2 = 120 --
    end if;
end;
/


select fatorial_func_rec(5) from dual;