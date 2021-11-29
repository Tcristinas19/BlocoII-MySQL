-- Criação do banco de Dados
create database db_ecommerce;


-- Usando o banco de dados para as querys
use db_ecommerce;

-- criando a tabela


create table tb_produtos(
id bigint(5) auto_increment,
    nome varchar(20) not null,
    preco decimal (10,2),
    tamanhoDisp varchar(20) not null,
    marca varchar(20) not null,
    cor varchar(20) not null,
    ativo boolean,
    primary key (id)
);

-- Inserindo os valores na minha tabela.


insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("NK-8", 129.20, "36 a 40", "nike", "preto, branco" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Air Max", 399.00, "36 a 40", "nike", "pretos e azul" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Air Force", 599.00, "36 a 42", "nike", "Preto e Marrom" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Air Max 90", 729.99, "36 a 44", "Nike", "Marrom e Branco" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Air Max III", 449.90, "36 a 44", "Nike", "Vermelho e Preto" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("SportWear Air Max", 1099.99, "36 a 42", "Nike", "Branco e Vermelho" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("Air Force 1'07", 699.00, "34 a 42", "Nike", "Branco e Azul" , true);
insert into tb_produtos (nome, preco, tamanhoDisp, marca, cor, ativo) values ("TailWind", 299.00, "32 a 40", "Nike", "Rosa e Branco" , true);


-- Selecionando minha tabela

select * from tb_produtos;

1	NK-8	 129.20	36 a 40	nike	preto, branco	1
2	Air Max	 399.00	36 a 40	nike	pretos e azul	1
3	Air Force	599.00	36 a 42	nike	Preto e Marrom	1
4	Air Max  90	729.99	36 a 44	Nike	Marrom e Branco	1
5	Air Max III	449.90	36 a 44	Nike	Vermelho e Preto	1
6	SportWear Air Max	1099.99	36 a 42	Nike	Branco e Vermelho	1
7	Air Force 1'07	699.00	34 a 42	Nike	Branco e Azul	1
8	TailWind	299.00	32 a 40	Nike	Rosa e Branco	1

Faça um select que retorne os produtos com o valor maior do que 500.

select * from tb_produtos where preco > 500;

3	Air Force	599.00	36 a 42	nike	Preto e Marrom	1
4	Air Max 90	729.99	36 a 44	Nike	Marrom e Branco	1
6	SportWear Air Max	1099.99	36 a 42	Nike	Branco e Vermelho	1
7	Air Force 1'07	699.00	34 a 42	Nike	Branco e Azul	1


Faça um select que retorne os produtos com o valor menor do que 500.

select * from tb_produtos where preco < 500;

1	NK-8	129.20	36 a 40	nike	preto, branco	1
2	Air Max	399.00	36 a 40	nike	pretos e azul	1
5	Air Max III	449.90	36 a 44	Nike	Vermelho e Preto	1
8	TailWind	299.00	32 a 40	Nike	Rosa e Branco	1


Ao término atualize um dado desta tabela através de uma query de atualização.

update tb_produtos set preco = 159.50
	where id = 1;

1	NK-8	159.50	36 a 40	nike	preto, branco	1