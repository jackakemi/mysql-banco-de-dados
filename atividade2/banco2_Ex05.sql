create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint(5) auto_increment,
secao varchar (255) not null,
fragil boolean not null,

primary key (id)
);

insert into tb_categoria(secao, fragil) values ("Ferramentas", true);
insert into tb_categoria(secao, fragil) values ("Pintura", false);
insert into tb_categoria(secao, fragil) values ("Elétrica", false);
insert into tb_categoria(secao, fragil) values ("Hidráulica", false);
insert into tb_categoria(secao, fragil) values ("Iluminação", true);

select * from tb_categoria;

create table tb_produto(
id bigint(5) auto_increment,
nome varchar (255) not null,
qtd_estoque int not null,
preco decimal (10,2) not null,
id_categoria bigint(5),

primary key (id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Furadeira", 10, 170.00, 1);
insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Pincel", 20, 15.00, 2);
insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Rolo de Pintura", 30, 10.00, 2);
insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Caixa de Ferramentas", 5, 250.00, 1);
insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Tomada", 100, 4.50, 3);
insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Chuveiro", 20, 155.00, 4);
insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Led", 40, 12.99, 5);
insert into tb_produto(nome, qtd_estoque, preco, id_categoria) values("Cano", 50, 20.00, 4);

select * from tb_produto;

-- valor maior do que 50
select nome, preco from tb_produto where preco > 50; 

-- valor entre 3 e 60
select nome, preco from tb_produto where preco >= 3 and preco <= 60;

-- LIKE buscando os produtos com a letra C.
select nome from tb_produto where nome like "c%";

-- Inner join entre tabela categoria e produto
select nome, preco, secao from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria; 

-- traga todos os Produtos de uma categoria específica
select nome, qtd_estoque, preco, secao from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria 
where secao = "Iluminação";