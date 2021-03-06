-- Criando Database
create database db_farmacia_do_bem;

-- Usando Database
use db_farmacia_do_bem;

-- Criando tabela

create table tb_categoria(
	id bigint(5)  auto_increment,
    categoria varchar(40) not null,
    PrecisaReceita boolean,
    idadeAlvo varchar(40)not null,
  
  primary key(id)
);

-- Criando segunda tabela

create table tb_produto(
	id bigint (5) auto_increment,
    nome varchar(30) not null,
    valor decimal (10,2),
    estoque bigint (10),
    validade date,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    
   );

-- Inserindo valores em tb_categoria

insert into tb_categoria (categoria, PrecisaReceita, idadeAlvo) values ("Genérico", true,"Todas as Idades");
insert into tb_categoria (categoria, PrecisaReceita, idadeAlvo) values ("Suplementos alimentares", false,"Adulto");
insert into tb_categoria (categoria, PrecisaReceita, idadeAlvo) values ("Vitaminas", false,"Todas as Idades");
insert into tb_categoria (categoria, PrecisaReceita, idadeAlvo) values ("Cosméticos", false,"Adulto");
insert into tb_categoria (categoria, PrecisaReceita, idadeAlvo) values ("Medicamento", true,"Todas as Idades");

-- Selecionando tb_categoria

select * from tb_categoria;

-- Inserindo valores em tb_produto

insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Lacto Purga",3.99,267,"2022-07-03",5);
insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Metformina",5.99,120,"2023-10-30",1);
insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Biomag",69.90,130,"2025-03-15",1);
insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Artrogen Duo",139.90,155,"2024-05-30",5);
insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Lavitan A-Z",19.99,188,"2025-10-03",3);
insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Centrum",97.90,222,"2026-10-21",3);
insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Souvenaid Danone Nutricia",59.19,89,"2021-11-30",2);
insert into tb_produto (nome, valor, estoque, validade, categoria_id) values ("Shampoo A Seco Menta Cuca Fresca",19.99,111,"2022-01-01",4);

-- Selecionando tb_produto valor maior que 50.00

select * from tb_produto where valor > 50.00;

-- Selecionando tb_produto valor entre 3.00 e 60.00

select * from tb_produto where valor > 3.00 and valor < 60.00;

-- selecionando tb_produto nome like B

select * from tb_produto where nome like "%b%";

-- Realizando inner join


   select * from tb_produto
   inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id

-- Realizando inner join e selecionando Cosméticos

   select * from tb_produto
   inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
   where tb_categoria.categoria like "%Cosméticos%"