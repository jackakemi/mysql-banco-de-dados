create database db_escola;

use db_escola;

create table tb_alunos(
	id bigint (5) auto_increment,
    nome varchar (100) not null,
    sexo varchar(1) not null,
    curso varchar (50) not null,
    nota decimal (3,1) not null,
    
    primary key(id)
);

select * from tb_alunos;

-- inserir dados na tabela
insert into tb_alunos (nome,sexo,curso,nota) values ("Jackeline Akemi", "F","Desenvolvimento Web", 7.6);
insert into tb_alunos (nome,sexo,curso,nota) values ("Maria Luiza Cabral", "F","Nutrição", 5.3);
insert into tb_alunos (nome,sexo,curso,nota) values ("Felipe Kazuo", "M","Direito", 3.3);
insert into tb_alunos (nome,sexo,curso,nota) values ("Fernanda Nunes", "F","Desenvolvimento de Sistemas", 8.9);
insert into tb_alunos (nome,sexo,curso,nota) values ("Rafael Akio", "M","Ciência da Computação", 8.6);
insert into tb_alunos (nome,sexo,curso,nota) values ("Caio Alves", "M","Fotografia", 8.9);
insert into tb_alunos (nome,sexo,curso,nota) values ("Daniele Oliveira", "F","Administração", 10.0);
insert into tb_alunos (nome,sexo,curso,nota) values ("Marcel Chiang ", "M","Engenharia de Produção", 9.7);

-- nota maior que 7
select * from tb_alunos where nota > 7;

-- nota menor que 7
select * from tb_alunos where nota < 7;

-- atualização de dados
update tb_alunos set nota = 4.5 where id = 5;
