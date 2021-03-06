-- Criando database
create database db_pizzaria_legal;

-- Usando Database
use db_pizzaria_legal;

-- Criando tabela 1
create table tb_categoria(
	id bigint(5)  auto_increment,
    categoria varchar(30) not null,
    tamanho varchar (20) not null,
    borda varchar(20)not null,
  
  primary key(id)
);

-- Criando tabela 2
create table tb_pizza(
	id bigint (5) auto_increment,
    sabor varchar(30) not null,
    valor decimal (10,2),
    vegetariana boolean,
    refrigerante varchar(30) not null,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    
   );
   
-- inserindo valores em tb_categoria

   insert into tb_categoria (categoria, tamanho, borda) values ("Pizza", "8 Pedaços", "Catupiry");
   insert into tb_categoria (categoria, tamanho, borda) values ("Pizza Doce", "8 Pedaços", "Beijinho");
   insert into tb_categoria (categoria, tamanho, borda) values ("Pizza Salgada", "8 Pedaços", "Cheddar");
   insert into tb_categoria (categoria, tamanho, borda) values ("Pizza Doce", "6 Pedaços", "Nutella");
   insert into tb_categoria (categoria, tamanho, borda) values ("Pizza Salgada", "6 Pedaços", "Catupiry");
   
-- Selecionando tb_categoria

   select * from tb_categoria;
   
-- Inserindo valores em tb_pizza

   insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("Calabresa", "31.99", false, "Dolly", 1);
	insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("4 Queijos", "33.99", false, "Coca-Cola", 1);
    insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("Prestígio", "45.99", false, "Fanta Laranja", 2);
    insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("Frango com Catupiry", "33.99", false, "Dolly", 3);
	insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("Brocolis", "39.99", true, "Fanta Uva", 5);
    insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("Nutella", "49.99", false, "Dolly", 4);
    insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("Lombo", "37.99", false, "Coca-Cola", 3);
    insert into tb_pizza (sabor, valor, vegetariana, refrigerante, categoria_id) values ("Palmito", "41.99", true, "Sprite", 1);
    
-- Selecionando tb_pizza

    select * from tb_pizza;

-- Selecionando valores maior que 45

select * from tb_pizza where valor > 45.00;

-- Selecionando valores entre 29 e 60

select * from tb_pizza where valor > 29.00 and valor < 60.00;

-- Selecionando pizza e sabor que começa com C

 select * from tb_pizza where sabor like "%c%";

-- Realizando inner join

   select * from tb_pizza
   inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id

-- inner join onde apenas tem Pizzas Doce

   select * from tb_pizza
   inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
   where tb_categoria.categoria like "%Pizza Doce%"