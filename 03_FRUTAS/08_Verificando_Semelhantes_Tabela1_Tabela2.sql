select cod_fruta_A,nome_fruta_A from conjuntoA
intersect
select cod_fruta_B,nome_fruta_B from conjuntoB

-- intersect pega apenas oque houver de igual nas tabelas e printa --