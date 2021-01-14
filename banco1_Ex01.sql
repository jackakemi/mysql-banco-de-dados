-- acesso ao db
use db_servico_rh;

-- criar um banco de dados
create database db_servico_rh;

-- criar tabela
create table tb_funcionario(
	id bigint(5) auto_increment,
	nome varchar(50) not null,
    idade int not null,
    cargo varchar(20) not null,
    salario float not null,
    
    primary key(id)
);

select * from tb_funcionario;

-- inserir dados na tabela
insert into tb_funcionario (nome,idade,cargo,salario) values ("Jackeline", 27, "Desenvolvedora", 5000);
insert into tb_funcionario (nome,idade,cargo,salario) values ("Beyonce", 32, "Designer", 3500);
insert into tb_funcionario (nome,idade,cargo,salario) values ("Fred Mercury", 50, "Coordenador", 8000);
insert into tb_funcionario (nome,idade,cargo,salario) values ("Angelina", 35, "RH", 3000);
insert into tb_funcionario (nome,idade,cargo,salario) values ("Brad Pitt", 40, "Financeiro", 4000);

-- salario maior que 2000
select * from tb_funcionario where salario > 2000;

-- salario menor que 2000
select * from tb_funcionario where salario < 2000;

-- atualizar tabela
update  tb_funcionario set cargo = "Gerente" where id = 3;