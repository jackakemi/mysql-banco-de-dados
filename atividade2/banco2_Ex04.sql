create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
categoria_id bigint(5) auto_increment,
tipo varchar(255) not null,
ativo boolean not null, 
primary key(categoria_id)
);

insert tb_categorias(tipo, ativo) values("Suíno", true);
insert tb_categorias(tipo, ativo) values("Bovino", true);
insert tb_categorias(tipo, ativo) values("Aves", true);
insert tb_categorias(tipo, ativo) values("Peixe", true);
insert tb_categorias(tipo, ativo) values("Frios", true);


create table tb_produto(
produto_id bigint(5) auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null,
qtde_estoque bigint not null,
categoria_id bigint(5) not null,
primary key(produto_id),
foreign key (categoria_id) references tb_categorias(categoria_id)
);

insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Cochão Mole", 45.00, 30, 2);
insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Picanha", 85.00, 20, 2);
insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Filé de Frango", 15.00, 30, 3);
insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Filé de Merlusa", 25.00, 30, 4);
insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Presunto", 3.00, 40, 5);
insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Patinho", 80.00, 30, 2);
insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Mussarela", 15.00, 30, 5);
insert tb_produto(nome, preco, qtde_estoque, categoria_id) values("Bisteca", 89.00, 30, 1);


select nome, preco from tb_produto where preco > 50;

select nome, preco from tb_produto where preco >= 3 and preco <= 60;

select nome from tb_produto where nome like "c%";

select nome, preco, tipo, ativo from tb_produto 
inner join tb_categorias on tb_categorias.categoria_id = tb_produto.categoria_id;

select nome, preco, tipo, ativo from tb_produto 
inner join tb_categorias on tb_categorias.categoria_id = tb_produto.categoria_id 
where tb_categorias.tipo = "Bovino";

