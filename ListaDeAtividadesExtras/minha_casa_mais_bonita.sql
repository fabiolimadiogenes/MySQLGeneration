create database db_nome_minha_casa_mais_bonita;

use db_nome_minha_casa_mais_bonita;

/*
xxsiga exatamente esse passo a passo:

xxCrie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta loja.

xxCrie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desta loja(não esqueça de criar
a foreign key de tb_categoria nesta tabela).

xxCrie a tabela Usuario e utilize a habilidade de abstração e determine 5 atributos relevantes
dos tb_usuario para se trabalhar com o serviço desta loja.

xxPopule atabela Categoria com até 5 dados.

xxPopule a tabela Produto com até 8 dados.

xxPopule atabela Usuario com até 5 dados.

xxFaça um select que retorne os Produtos com o valor maior do que 50 reais.

xxFaça um select trazendo os Produtos com valor entre 3 e 60 reais.

xxFaça um select utilizando LIKE buscando os Produtos com a letra B.

xxFaça um select utilizando LIKE buscando os Usuários com a letra C.

xxFaça um um select com Inner join entre tabela categoria e produto.

xxfaça um select que retorne a média de preços dos produtos;

faça um select que retorne a soma de preços dos produtos;

faça um select que quantidade de produtos cadastrados na tabela

Faça um select onde traga todos os Produtos de uma categoria específica

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).

salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create table tb_categoria
(
	id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255) not null,
    ativo boolean,
    primary key(id)
);

create table tb_produto
(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal not null,
    quantidade int,
    condicao varchar(255) not null,
    descricao varchar(255) not null,
	categoria_id bigint not null,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

create table tb_usuario
(
	id bigint auto_increment,
    nome varchar(255) not null,
    email varchar(255) not null,
    senha varchar(255) not null,
    idade int not null,
    estado varchar(255) not null,
	primary key(id)
  );
  
  insert into tb_categoria (tipo,descricao,ativo) values ("eletronicos","eletronicos de A-Z",true),("higiene pessoal","tudo pensado para você",true),
	("maquiagem","Maquiagem de A-Z",true),("games","O jogo que você quer você encontra aqui.",true),("filmes","Do cinema para sua casa",true);
    
  select * from tb_categoria;
  
  insert into tb_produto (nome,valor,quantidade,condicao,descricao,categoria_id) values ("Fone de ouvido",100,5,"novo","Som de qualidade para você",1),
	("Desodorante",17,30,"novo","Mais frescor",2),("Batom",36,90,"novo","As melhores marcas",3),("Forza Horrizon 4",200,30,"novo","Velocidade sem limites",4),
    ("Batman VS Superman",40,30,"novo","MARTHAAAA",5),("Radio",59,10,"usado","Portatil e prático",1),("Sabonete",3,50,"novo","Lavanda",2),
    ("Delineador",18,20,"novo","Delineador liquido com acabamento matte",3);
    
  select * from tb_produto where tb_produto.valor > 50; 
  
  select * from tb_produto where tb_produto.valor between 3 and 60;
  
  select * from tb_produto where tb_produto.nome like "%B%";
  
  select * from tb_produto where tb_produto.nome like "%C%";
  
  select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
  
  select avg(valor) from tb_produto;
  
  select count(*) from tb_produto;
  
  select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo = "Eletronicos";
  
  select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo = "higiene pessoal";