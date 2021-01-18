create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment,
especialidade varchar (255) not null,
tipo_jogo varchar (255) not null,

primary key (id)
);

insert into tb_classe(especialidade, tipo_jogo) values ("Arqueiro", "Estratégia");
insert into tb_classe(especialidade, tipo_jogo) values ("Mago", "RPG");
insert into tb_classe(especialidade, tipo_jogo) values ("Guerreiro", "Aventura");
insert into tb_classe(especialidade, tipo_jogo) values ("Lutador", "Ação");
insert into tb_classe(especialidade, tipo_jogo) values ("Cavaleiro", "Aventura");

select * from tb_classe;

create table tb_personagem(
id bigint(5) auto_increment,
nome varchar (255) not null,
ataque int not null,
defesa int not null,
id_categoria bigint(5),

primary key (id),
foreign key(id_categoria) references tb_classe(id)
);


insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Ushan", 2100, 1900, 2);
insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Kratos", 4500, 4000, 3);
insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Scorpion", 1700, 1400, 4);
insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Lara Croft", 1500, 1300, 1);
insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Ryu", 2300, 2300 , 4);
insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Azadium", 3000, 2500, 2);
insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Cloud Strife", 1900 ,900 , 3);
insert into tb_personagem(nome, ataque, defesa, id_categoria) values("Celeste", 2300, 2000, 5);

select * from tb_personagem;

-- poder de ataque maior do que 2000.
select nome, ataque from tb_personagem where ataque > 2000; 

-- poder de defesa entre 1000 e 2000
select nome, defesa from tb_personagem where defesa >= 1000 and defesa <= 2000;

-- LIKE buscando os personagens com a letra C.
select nome from tb_personagem where nome like "c%";

-- Inner join entre tabela classe e personagem.
select nome, especialidade, tipo_jogo from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.id_categoria; 

-- traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select nome, ataque, defesa, especialidade, tipo_jogo from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.id_categoria 
where especialidade = "Mago";