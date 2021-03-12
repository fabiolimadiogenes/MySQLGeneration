/*Atividade 6

xxCrie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.

xxO sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

xxsiga exatamente esse passo a passo:

xxCrie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

xxCrie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

xxPopule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).
*/

create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria
(
	id bigint auto_increment,
    nome varchar(255) not null,
    pago boolean,
    gratuito boolean,
    primary key(id)
);

create table tb_curso
(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal not null,
    hrs_duracao int,
    avançado boolean,
    iniciante boolean,
	categoria_id bigint not null,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (nome,pago,gratuito) values ("Java",true,false),("Python",true,false),
	("HTML5",true,false),("CSS3",true,false),("Portugol",false,true);
    
select * from tb_categoria;
    
insert into tb_curso (nome,valor,hrs_duracao,avançado,iniciante,categoria_id) values ("Java Começando a programar",40.00,10,false,true,1),
	("Java Avançado",60.00,50,true,false,1),("Python Avançado",45.00,40,true,false,2),("HTML5 Curso prático",35.00,30,false,true,3),
	("CSS3 para se tornar um expert",70.00,80,true,false,4),("CSS3 começe por aqui",20.00,20,false,true,4),
	("Portugol inicio de uma jornada",0,10,false,true,5),("Portugol dominando a lógica da programação",0,10,false,true,5);
    
select * from tb_curso where tb_curso.valor > 50;
   
select * from tb_curso where tb_curso.valor between 3 and 60;

select * from tb_curso where tb_curso.nome like "%j%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.nome = "java";