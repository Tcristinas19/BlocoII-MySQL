-- Criação do banco de Dados
create database db_rh;


-- Usando o banco de dados para as querys
use db_rh;

-- criando a tabela

create table tb_funcionaries(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    idade bigint (2),
    sexo varchar(20),
    salario decimal(10,2),
    funcao varchar(20),
    ativo boolean,
    primary key (id)
);

-- Inserindo os valores na minha tabela.


insert into tb_funcionaries (nome, idade, sexo, salario, funcao, ativo) values ("Jorge", 23, "masculino", 1500.00, "Ajudante Geral" , true);
insert into tb_funcionaries (nome, idade, sexo, salario, funcao, ativo) values ("Pedro", 32, "masculino", 3200.00, "Fresador" , true);
insert into tb_funcionaries (nome, idade, sexo, salario, funcao, ativo) values ("João", 34, "masculino", 4100.00, "Caldeireiro" , true);
insert into tb_funcionaries (nome, idade, sexo, salario, funcao, ativo) values ("Matheus", 21, "Masculino", 1900.00, "Soldador" , true);
insert into tb_funcionaries (nome, idade, sexo, salario, funcao, ativo) values ("Vinicius", 39, "Masculino", 3700.00, "Serralheiro" , true);

-- Selecionando minha tabela

select * from tb_funcionaries;

1	Jorge	23	masculino	1500.00	Ajudante Geral	1
2	Pedro	32	masculino	3200.00	Fresador	1
3	João	34	masculino	4100.00	Caldeireiro	1
4	Matheus	21	Masculino	1900.00	Soldador	1
5	Vinicius	39	Masculino	3700.00	Serralheiro	1

Faça um select que retorne os funcionaries com o salário maior do que 2000.

select * from tb_funcionaries where salario > 2000;

2	Pedro	32	masculino	3200.00	Fresador	1
3	João	34	masculino	4100.00	Caldeireiro	1
5	Vinicius	39	Masculino	3700.00	Serralheiro	1

Faça um select que retorne os funcionaries com o salário menor do que 2000.

select * from tb_funcionaries where salario < 2000;

1	Jorge	23	masculino	1500.00	Ajudante Geral	1
4	Matheus	21	Masculino	1900.00	Soldador	1

Ao término atualize um dado desta tabela através de uma query de atualização.

update tb_funcionaries set salario = 1700.00
	where id = 1;

1	Jorge	23	masculino	1700.00	Ajudante Geral	1
2	Pedro	32	masculino	3200.00	Fresador	1
3	João	34	masculino	4100.00	Caldeireiro	1
4	Matheus	21	Masculino	1900.00	Soldador	1
5	Vinicius	39	Masculino	3700.00	Serralheiro	1