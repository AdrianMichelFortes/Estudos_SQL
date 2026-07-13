select cod_fruta_A,nome_fruta_A from conjuntoA
minus
select cod_fruta_B,nome_fruta_B from conjuntoB

-- em vez de pegar os semelhantes e mostralos, aqui a coisa é o inverso ele remove os semelhantes e demonstra oque restou na tabela --
-- o print da descrição da tabela sempre será da tabela de cima -- 