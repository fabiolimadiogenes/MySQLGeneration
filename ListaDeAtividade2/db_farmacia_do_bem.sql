/*
Atividade 3

xxCrie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

xxO sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

xxsiga exatamente esse passo a passo:

xxCrie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

xxCrie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
*/

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria
(
	id bigint auto_increment,
    nome varchar(255) not null,
    generico boolean,
    eletronico boolean,
    primary key(id)
);

create table tb_produto
(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal not null,
    quantidade int,
    controlado boolean,
    r_natural boolean,
	categoria_id bigint not null,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (nome,generico,eletronico) values ("higiene_pessoal",false,false),("maquiagem ",false,false),
	("cosmeticos",false,false),("mamae_bebe",false,false),("medicamentos",false,false);
    
insert into tb_produto (nome,valor,quantidade,controlado,r_natural,categoria_id) values ("Creme Dental",4.00,40,false,false,1),
	("Sabonetes",3.00,60,false,true,1),("Desodorante",17.00,30,false,false,1),("Batom",25.00,40,false,true,2),
    ("Protetor solar",55.00,25,false,false,3),("Fraldas",73.00,80,false,false,4),("Para dor de cabeça",13.00,30,false,false,5),
    ("Antialergico",20.00,46,true,false,5);
    
select * from tb_produto where tb_produto.valor > 50;
   
select * from tb_produto where tb_produto.valor between 3 and 60;

select * from tb_produto where tb_produto.nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.nome = "higiene_pessoal";
 