create database db_jdbc;

use db_jdbc;

create table produto (
	id int primary key identity,
	nome varchar(50),
	descricao varchar(255),
	preco numeric(10,2)
);

