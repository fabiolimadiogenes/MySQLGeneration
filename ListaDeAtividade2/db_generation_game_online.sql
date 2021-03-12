/*
Atividade 1

xxCrie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

xxO sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

xxsiga exatamente esse passo a passo:

xxCrie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

xxCrie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

xxPopule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe
(
	id bigint auto_increment,
    classe varchar(255) not null,
    raça varchar(255) not null,
    ativo boolean,
    primary key(id)
);

create table tb_personagens
(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade varchar(255) not null,
    poder_ataque int,
    poder_defesa int,
    poder_magico int,
    classe_id bigint not null,
    primary key(id),
    foreign key (classe_id) references tb_classe(id)
);

insert into tb_classe (classe,raça,ativo) values ("espião","humana",true),("mago","humana",true),("arqueiro","humana",true),
	("heroi","humana",true),("guerreiro","Asgardiano",true);
    
insert into tb_personagens (nome,idade,poder_ataque,poder_defesa,poder_magico,classe_id) values ("Solid Snake",34,2000,1000,0,1),
	("Viuva Negra",32,4000,3000,0,1),("Doutor Estranho",34,8000,8000,9000,2),("Feiticeira Escarlate",37,9000,9000,10000,2),
    ("Gavião Arqueiro",50,3000,1000,0,3),("Homem de Ferro",53,7000,8000,0,4),("Thor",1500,10000,9000,9000,5),
    ("Homem Aranha",17,7000,6000,0,4);
    
select * from tb_personagens where tb_personagens.poder_ataque > 2000;
   
select * from tb_personagens where tb_personagens.poder_defesa between 1000 and 2000;

select * from tb_personagens where tb_personagens.nome like "%c%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_classe.classe = "mago";
 