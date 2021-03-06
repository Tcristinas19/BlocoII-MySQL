-- Criando Database
create database db_construindo_a_nossa_vida;

-- Usando Database
use db_construindo_a_nossa_vida;

-- Criando tabela categoria

create table tb_categoria(
	id bigint(5)  auto_increment,
    categoria varchar(40) not null,
    tipoProduto varchar(50) not null,
    entrega boolean,
  
  primary key(id)
);

-- Criando tabela produto

create table tb_produto(
	id bigint (5) auto_increment,
    marca varchar(40) not null,
    valor decimal (10,2),
    estoque bigint (10),
    tamanho varchar(40),
    categoria_id bigint not null,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    
   );

-- Inserindo valores em tb_categoria

insert into tb_categoria (categoria, tipoProduto, entrega) values ("Construção", "Cimento",true);
insert into tb_categoria (categoria, tipoProduto, entrega) values ("Hidráulica", "PVC",true);
insert into tb_categoria (categoria, tipoProduto, entrega) values ("Hidráulica", "Calha",true);
insert into tb_categoria (categoria, tipoProduto, entrega) values ("Construção", "Bloco Cerâmico",true);
insert into tb_categoria (categoria, tipoProduto, entrega) values ("Construção", "Telha",true);

-- Selecionando tb_categoria

select * from tb_categoria;

-- Inserindo valores em tb_produto

insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Votorantim",27.89,300,"50KG",1);
insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Cauê",24.90,200,"50KG",1);
insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Forro Frisado Plastilit",8.67,250,"8mmx10cmx3m",2);
insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Amanco",0.69,150,"20MM",2);
insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Aquapluv Style",254.90,50,"300cm",3);
insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Amanco",196.89,90,"170Mm 3M",3);
insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Nova União",1.19,310,"5x14x24cm",4);
insert into tb_produto (marca, valor, estoque, tamanho, categoria_id) values ("Leroy Merlin",49.90,60,"2,44mx1,10mx5mm",5);

-- Selecionando tabela produto

select * from tb_categoria;

-- Selecionando tb_produto valor maior que 50.00

select * from tb_produto where valor > 50.00;

-- Selecionando tb_produto valor entre 3.00 e 60.00

select * from tb_produto where valor > 3.00 and valor < 60.00;

-- selecionando tb_produto nome like C

select * from tb_produto where marca like "%c%";

-- Realizando inner join

   select * from tb_produto
   inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id

-- Realizando inner join e selecionando Hidráulica

select * from tb_produto
   inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
   where tb_categoria.categoria like "%Hidráulica%"