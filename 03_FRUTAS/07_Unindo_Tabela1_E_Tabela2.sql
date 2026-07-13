select cod_fruta_A,nome_fruta_A from conjuntoA
union
select cod_fruta_B,nome_fruta_B from conjuntoB

-- o codigo union uni as duas tabelas de frutas conjuntoA e conjuntoB não repete os semelhantes na descrição -- 

select cod_fruta_A,nome_fruta_A from conjuntoA
union all
select cod_fruta_B,nome_fruta_B from conjuntoB

-- o codigo union all uni as duas tabelas de frutas conjuntoA e conjuntoB repetindo elas na descrição se houver semelhantes -- 