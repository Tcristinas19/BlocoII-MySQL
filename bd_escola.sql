-- Criação do banco de Dados
create database db_escola;


 -- Usando o banco de dados para as querys
use db_escola;


-- criando a tabela

create table tb_estudantes(
id bigint(5) auto_increment,
    nome varchar(20) not null,
    idade bigint (2),
    turma bigint (2),
    sexo varchar(20) not null,
    nota bigint (2),
    ativo boolean,
    primary key (id)
);

-- Inserindo os valores na minha tabela.


insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Marcia", 15, 27, "Feminino", 7 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Jaqueline", 14, 21, "Feminino", 8 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Victor", 12, 31, "Masculino", 9 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Yuri", 15, 27, "Masculino", 10 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Fabiola", 16, 13, "Feminino", 8 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Vanessa", 16, 13, "Feminino", 7 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Marco", 15, 27, "Masculino", 6 , true);
insert into tb_estudantes (nome, idade, turma, sexo, nota, ativo) values ("Gabrielly", 14, 21, "Feminino", 10 , true);

-- Selecionando minha tabela

select * from tb_estudantes;

1	Marcia	15	27	Feminino	7	1
2	Jaqueline	14	21	Feminino	8	1
3	Victor	12	31	Masculino	9	1
4	Yuri	15	27	Masculino	10	1
5	Fabiola	16	13	Feminino	8	1
6	Vanessa	16	13	Feminino	7	1
7	Marco	15	27	Masculino	6	1
8	Gabrielly	14	21	Feminino	10	1


Faça um select que retorne o/as estudantes com a nota maior do que 7.

select * from tb_estudantes where nota > 7;

2	Jaqueline	14	21	Feminino	8	1
3	Victor	12	31	Masculino	9	1
4	Yuri	15	27	Masculino	10	1
5	Fabiola	16	13	Feminino	8	1
8	Gabrielly	14	21	Feminino	10	1


Faça um select que retorne o/as estudantes com a nota menor do que 7.

select * from tb_estudantes where nota <= 7;

1	Marcia	15	27	Feminino	7	1
6	Vanessa	16	13	Feminino	7	1
7	Marco	15	27	Masculino	6	1


Ao término atualize um dado desta tabela através de uma query de atualização.

update tb_estudantes set nota = 8
	where id = 1;

1	Marcia	15	27	Feminino	8	1