/*
Atividade 3

Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos alunos deste registro dessa escola. 

Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos relevantes dos alunos/a para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;

Faça um select que retorne o/as alunos/a com a nota maior do que 7.

Faça um select que retorne o/as alunos/a com a nota menor do que 7.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_resgistroEscola_re;

use db_resgistroEscola_re;

create table tb_alunos
(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade varchar(255) not null,
    matricula int not null,
    nota double not null,
    ativo boolean,
    primary key(id)
);

insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Daniel",19,3455,7.5,true);

insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Gabriel",20,4589,7,true);
insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Ana",21,5596,5,true);
insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Ricardo",19,7855,4,true);
insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Fabio",17,9944,8,true);
insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Lucas",19,3495,9,true);
insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Valdir",22,4454,4,true);
insert into tb_alunos (nome,idade,matricula,nota,ativo) values ("Luan",19,7845,8.5,true);

update tb_alunos set tb_alunos.nota = 7.6 where id = 7;

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
