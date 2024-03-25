create database if not exists dbcantina;
use dbcantina;






create table if not exists categoria (
id int auto_increment,
descricao varchar(30),
primary key(id)
);

create table if not exists produto(
id int auto_increment,
nome varchar(30),
validade date,
preco double,
sabor varchar(15),
quantidade smallint,
primary key(id),
foreign key(id_categoria) references categoria(id)
);

create table if not exists endereco(
id int auto_increment,
cidade varchar(35),
bairro varchar(50),
estado varchar (35),
cep varchar(8),
logradouro varchar(60),
primary key(id)
);

create table if not exists fornecedor(
id int auto_increment,
nome varchar(40),
email varchar(70),
telefone char(14),
cnpj char(14),
primary key(id)
);

create table if not exists Produto_Fornecedor_Assoc (
id_produto int auto_increment,
id_fornecedor int auto_increment,
primary key(id_porduto, id_fornecedor),
foreign key (id_produto) references produto(id),
foreign key (id_fornecedor) references fornecedor(id)



);

create table if not exists despesa (
id int auto_increment,
descricao varchar (150),
data_vencimento date,
valor double ,
primary key(id)
);

create table if not exists pagamento(
id int auto_increment,
valor double,
data_pagamento date,
id_despesa int,
id_fornecedor int,
foreign key (id_despesa) references despesa(id),
foreign key (id_fornecedor) references fornecedor(id),


primary key(id)
);

create table if not exists cargo (
id int auto_increment,
tipo varchar (30),
descricao varchar (90),
primary key(id)

);

create table if not exists funsionario (
id int auto_increment,
nome varchar(50),
telefone int (15),
endereco varchar (150),
genero varchar (8),
id_cargo int,
id_endereco int,
foreign key (id_cargo) references cargo(id),
foreign key (id_endereco) references endereco(id),
primary key(id)
);

create table if not exists venda(
id int auto_increment,
data_vanda date,
id_cliente int,
id_funcionario int,

primary key(id)
);
create table if not exists (
id int auto_increment,

primary key(id)
);
#11
create table if not exists (
id int auto_increment,

primary key(id)
);

create table if not exists (
id int auto_increment,

primary key(id)
);


create table if not exists (
id int auto_increment,

primary key(id)
);