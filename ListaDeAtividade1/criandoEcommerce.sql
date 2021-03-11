/*
Atividade 2

Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 

Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 8 dados;

Faça um select que retorne os produtos com o valor maior do que 500.

Faça um select que retorne os produtos com o valor menor do que 500.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/

create database db_ecommerce_ec;

use db_ecommerce_ec;

create table tb_produtosEletronicos
(
	id bigint auto_increment,
    marca varchar(255) not null,
    modelo varchar(255) not null,
    importado varchar(255) not null,
    quantidade int not null,
    valor float not null,
    primary key(id)
);

insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("Sony","Playstation","Sim",100,6900.00);
insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("Microsoft","Xbox","Sim",130,5900.00);
insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("LG","SmarTV","Sim",30,3500.00);
insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("TCL","SmarTV","Sim",25,1400.00);
insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("C3TECH","Caixa de Som","Sim",90,355.00);
insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("Nintendo","Switch","Sim",150,7950.00);
insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("Samsung","Smartphone","Sim",210,8400.00);
insert into tb_produtosEletronicos (marca,modelo,importado,quantidade,valor) values ("Asus","Smartphone","Sim",135,450.00);

update tb_produtosEletronicos set tb_produtosEletronicos.valor = 499.00 where id = 7;

select * from tb_produtosEletronicos where valor > 500;
select * from tb_produtosEletronicos where valor < 500;
