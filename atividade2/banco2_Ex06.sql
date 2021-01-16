create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
categoria_id bigint(5) auto_increment primary key,
tipo varchar(255) not null,
professor varchar(255) not null
);

insert into tb_categoria(tipo, professor) values ("Presencial", "Carlos Majer");
insert into tb_categoria(tipo, professor) values ("Semi-Presencial", "Ednilson");
insert into tb_categoria(tipo, professor) values ("EAD", "Ednilson");
insert into tb_categoria(tipo, professor) values ("Presencial", "Lucas Capelotto");
insert into tb_categoria(tipo, professor) values ("EAD", "Geandro");


create table tb_curso(
curso_id bigint(5) auto_increment primary key,
curso varchar(255) not null,
area varchar(255) not null,
escola varchar(255) not null,
preco decimal(10,2) not null,
id_categoria bigint(5),
foreign key(id_categoria) references tb_categoria(categoria_id)
);


insert into tb_curso(curso, area, escola, preco, id_categoria) values("Java Full Stack", "Programação", "Generation Brasil", 0.00, 3);
insert into tb_curso(curso, area, escola, preco, id_categoria) values("Banco de Dados", "Programação", "Generation Brasil", 0.00, 4);
insert into tb_curso(curso, area, escola, preco, id_categoria) values("PHP", "Programação", "Digital House", 80.00, 1);
insert into tb_curso(curso, area, escola, preco, id_categoria) values("Scrum", "Soft SKills", "Generation Brasil", 5000.00, 5);
insert into tb_curso(curso, area, escola, preco, id_categoria) values("Python", "Programação", "FIAP", 0.00, 1);
insert into tb_curso(curso, area, escola, preco, id_categoria) values("Photoshop", "Design Gráfico", "SENAC",2500.00, 4);
insert into tb_curso(curso, area, escola, preco, id_categoria) values("Illustrator", "Desgin Gráfico", "SENAC",2500.00, 4);
insert into tb_curso(curso, area, escola, preco, id_categoria) values("Empreendedorismo", "Negócios", "Generation Brasil", 0.00, 2);


select escola, curso, preco from tb_curso where preco > 50; 

select escola, curso, preco from tb_curso where preco >= 3 and preco <=60;

select escola, curso, preco from tb_curso where curso like "j%";

select escola, curso, preco, tipo, professor from tb_curso 
inner join tb_categoria on categoria_id = id_categoria; 

select escola, curso, area, preco, tipo, professor from tb_curso 
inner join tb_categoria on categoria_id = id_categoria 
where area = "Programação";



