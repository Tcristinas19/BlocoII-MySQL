-- Criando Database
create database db_cursoDaMinhaVida;

-- Usando Database
use db_cursoDaMinhaVida;

-- Criando tabela categoria

create table tb_categoria(
	id bigint(5)  auto_increment,
    tiposCursos varchar(50) not null,
    homeoffice boolean,
    certificado boolean,
  
  primary key(id)
);

-- Criando tabela curso

create table tb_curso(
	id bigint (5) auto_increment,
    nome varchar(40) not null,
    valor decimal (10,2),
    horas bigint (10),
    dificuldade varchar(40),
    categoria_id bigint not null,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    
   );

--Inserindo valores em tb_categoria

   insert into tb_categoria (tiposCursos, homeoffice, certificado) values ("Programação", true,true);
   insert into tb_categoria (tiposCursos, homeoffice, certificado) values ("Front end", true,true);
   insert into tb_categoria (tiposCursos, homeoffice, certificado) values ("Mobile", true,true);
   insert into tb_categoria (tiposCursos, homeoffice, certificado) values ("DEVOps", true,true);
   insert into tb_categoria (tiposCursos, homeoffice, certificado) values ("UX & DESIGN", true,true);

-- Selecionando tb_categoria

select * from tb_categoria;

-- Inserindo valores em tb_curso

  insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("Java JRE e JDK",89.00,58,"Iniciante",1);
   insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("Java e Quarkus",69.00,10,"intermediário",1);
   insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("HTML5 e CSS3",39.00,16,"Iniciante",2);
   insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("Curso de Angular",44.00,50,"Avançado",2);
   insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("Flutter",77.00,48,"Intermediário",3);
   insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("Android",81.00,52,"Avançado",3);
   insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("Builds e Controle de versão",34.90,28,"Iniciante",4);
   insert into tb_curso (nome, valor, horas, dificuldade, categoria_id) values ("UI - User Interface",63.00,62,"Avançado",5);

-- Selecionando tabela curso

select * from tb_curso;

-- Selecionando tb_curso valor maior que 50.00

 select * from tb_curso where valor > 50.00;

-- Selecionando tb_curso valor entre 3.00 e 60.00

select * from tb_curso where valor > 3.00 and valor < 60.00;

-- selecionando tb_curso nome like J

 select * from tb_curso where nome like "%j%";

-- Realizando inner join

       select * from tb_curso
   inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id

-- Realizando inner join e selecionando Programação

      select * from tb_curso
   inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
   where tb_categoria.tiposCursos like "%Programação%"