/*
Atividade 2

xxCrie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

xxO sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

xxsiga exatamente esse passo a passo:

xxCrie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

xxCrie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

xxPopule esta tabela Categoria com até 5 dados.

xxPopule esta tabela pizza com até 8 dados.

xxFaça um select que retorne os Produtos com o valor maior do que 45 reais.

xxFaça um select trazendo os Produtos com valor entre 29 e 60 reais.

xxFaça um select utilizando LIKE buscando os Produtos com a letra C.

xxFaça um um select com Inner join entre tabela categoria e pizza.

xxFaça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria
(
	id bigint auto_increment,
    pizza_grande boolean not null,
    pizza_broto boolean not null,
    pizza_doce boolean not null,
    pizza_salgada boolean not null,
    primary key(id)
);

create table tb_pizza
(
	id bigint auto_increment,
    sabor varchar(255) not null,
    valor decimal not null,
    quantidade int,
    borda_catupiry boolean,
    borda_cheddar boolean,
	categoria_id bigint not null,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (pizza_grande,pizza_broto,pizza_doce,pizza_salgada) values (true,false,true,false),(true,false,false,true),
	(false,true,true,false),(false,true,false,true),(true,false,true,true);
    
select * from tb_categoria;    
    
insert into tb_pizza (sabor,valor,quantidade,borda_catupiry,borda_cheddar,categoria_id) values ("calabresa",50.00,1,true,false,2),
	("queijo",40.00,2,true,false,2),("frango com catupiry",60.00,1,false,true,2),("toscana",30.00,1,true,false,2),
	("brigadeiro",59.00,3,false,false,1),("morango com chocolate",31.00,1,false,false,3),("mexicana",70.00,4,true,false,4),
    ("goiabada com queijo",80.00,1,false,false,5);
    
select * from tb_pizza where tb_pizza.valor > 45;
   
select * from tb_pizza where tb_pizza.valor between 29 and 60;

select * from tb_pizza where tb_pizza.sabor like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.pizza_doce = true;
 