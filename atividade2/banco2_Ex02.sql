create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint (5) auto_increment,
    tamanho varchar (20) not null,
    salgada boolean not null,
    primary key (id)
);

create table tb_pizza(
	id bigint (5) auto_increment,
    sabor varchar(255) not null,
    tipo_massa varchar (255) not null,
    preco decimal (4,2) not null,
    categoria_id bigint,
	primary key (id),
	FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_categoria (tamanho, salgada) values ("Grande",true); 
insert tb_categoria (tamanho, salgada) values ("Média",true); 
insert tb_categoria (tamanho, salgada) values ("Pequena",true); 
insert tb_categoria (tamanho, salgada) values ("Média",false); 
insert tb_categoria (tamanho, salgada) values ("Pequeno",false);

insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Peperoni", "Fina", 38.00, 1);
insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Portuguesa", "Fina", 25.00, 2);
insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Calabresa", "Tradicional", 22.00, 2);
insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Brigadeiro", "Fina", 46.00, 4);
insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Prestígio", "Fina", 37.00, 5);
insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Atum", "Tradicional", 61.00, 1);
insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Frango", "Tradicional", 52.00, 1);
insert tb_pizza (sabor, tipo_massa, preco, categoria_id) values ("Champignon", "Fina", 65.00, 3);

select * from tb_categoria;
select * from tb_pizza;

-- Valor maior que 45
select * from tb_pizza where preco > 45;

-- Valor entre 29 e 60
select * from tb_pizza where preco > 28 and preco < 61;

-- Utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor Like "%C%";

-- Inner join entre tabela categoria e pizza.
select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select tb_pizza.sabor, tb_categoria.tamanho from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.tamanho = "Grande";
