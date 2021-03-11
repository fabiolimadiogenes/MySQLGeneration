create database db_servico_rh;

use db_servico_rh;

create table tb_funcionarios
(
	id bigint auto_increment,
	nome varchar(255) not null,
	idade int not null,
	salario float not null,
    primary key(id)
);

alter table tb_funcionarios add ativo boolean;

insert into tb_funcionarios (nome,idade,salario,ativo) values ("Fabio",26,5000.00,true);
insert into tb_funcionarios (nome,idade,salario,ativo) values ("Denise",28,7000.00,true);
insert into tb_funcionarios (nome,idade,salario,ativo) values ("Regina",41,9000.00,true);
insert into tb_funcionarios (nome,idade,salario,ativo) values ("Douglas",19,1600.00,true);
insert into tb_funcionarios (nome,idade,salario,ativo) values ("Leonardo",21,1980.00,true);

update tb_funcionarios set tb_funcionarios.salario = 1800 WHERE id = 4;

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;



