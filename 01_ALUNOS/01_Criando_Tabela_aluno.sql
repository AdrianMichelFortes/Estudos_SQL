Create table aluno(
id number(5) primary key,
nome varchar2(20) not null,
data_mat date default sysdate,
cod_turma number(2));

Select * from aluno;

-- Select * from é utilizado para visualizar uma tabela --

