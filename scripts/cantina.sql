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