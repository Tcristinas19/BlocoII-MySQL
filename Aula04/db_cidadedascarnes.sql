-- Criando database
create database db_cidade_das_carnes;

-- Usando Database
use db_cidade_das_carnes;

-- Criando tabela categoria

create table tb_categoria(
	id bigint(5)  auto_increment,
    tipoDeCarne varchar(40) not null,
    congelada boolean,
    peça varchar(50) not null,
  
  primary key(id)
);

-- Criando tabela produto
 
create table tb_produto(
	id bigint (5) auto_increment,
    nome varchar(30) not null,
    valor1kg decimal (10,2),
    codigoPeso bigint (10),
    validade date,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    
   );

-- inserindo valores em categoria

 insert into tb_categoria (tipoDeCarne, congelada, peça) values ("Bovina", true,"Inteira");
insert into tb_categoria (tipoDeCarne, congelada, peça) values ("Bovina", true,"Cortada");
insert into tb_categoria (tipoDeCarne, congelada, peça) values ("Bovina", false,"Inteira");
insert into tb_categoria (tipoDeCarne, congelada, peça) values ("Bovina", false,"Cortada");
insert into tb_categoria (tipoDeCarne, congelada, peça) values ("Frango", true,"Cortada");

-- selecionando categoria

 select * from tb_categoria;  

-- inserindo valores em produtos

insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Picanha",76.00,4321,"2022-07-03",1);
insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Picanha",76.00,1234,"2022-07-03",2);
insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Alcatra",49.99,6543,"2021-03-10",3);
insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Alcatra",49.99,7890,"2021-03-10",4);
insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Contra Filé",51.99,2234,"2021-02-12",1);
insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Contra Filé",61.99,2254,"2022-05-30",3);
insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Fraldinha",35.99,3244,"2021-10-22",3);
insert into tb_produto (nome, valor1kg, codigoPeso, validade, categoria_id) values ("Filé de Frango",18.20,9982,"2022-10-22",5);

-- Selecionando tabela produto

select * from tb_produto;

-- Selecionando tb_produto valor maior que 50.00

select * from tb_produto where valor1kg> 50.00;

-- Selecionando tb_produto valor entre 3.00 e 60.00

select * from tb_produto where valor1kg > 3.00 and valor1kg < 60.00;

-- selecionando tb_produto nome like C

select * from tb_produto where nome like "%c%";

-- Realizando inner join


   select * from tb_produto
   inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id

-- Realizando inner join e selecionando tipoDeCarne bovina

      select * from tb_produto
   inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
   where tb_categoria.tipoDeCarne like "%Bovina%"