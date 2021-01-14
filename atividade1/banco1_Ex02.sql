create database db_estoque;

use db_estoque;

create table tb_produtos(
	id bigint (5) auto_increment,
    nome varchar(30) not null,
    marca varchar(30) not null,
    preco float not null,
    qtd int not null,
    
    primary key(id)
);

select * from tb_produtos;

-- inserir dados na tabela
insert into tb_produtos (nome,marca,preco,qtd) values ("iPhone 12", "Apple", 4500, 20);
insert into tb_produtos (nome,marca,preco,qtd) values ("Galaxy A71", "Samsung", 2000, 15);
insert into tb_produtos (nome,marca,preco,qtd) values ("Moto G8 Plus", "Motorola", 1400, 23);
insert into tb_produtos (nome,marca,preco,qtd) values ("Redmi Note 8", "Xiaomi", 1300, 10);
insert into tb_produtos (nome,marca,preco,qtd) values ("K40S", "LG", 850, 8);
insert into tb_produtos (nome,marca,preco,qtd) values ("P30 Pro", "Huawei ", 5200, 20);
insert into tb_produtos (nome,marca,preco,qtd) values ("Xperia 5 II", "Sony", 2500, 12);
insert into tb_produtos (nome,marca,preco,qtd) values ("ZenFone 7 Pro", "Asus", 5400, 6);


-- valor maior que 500
select * from tb_produtos where preco > 500;

-- valor menor que 500
select * from tb_produtos where preco < 500;

-- atualizar dados
update tb_produtos set preco = 450 where id = 5;