create database dbProjeto2sem2021;

use dbProjeto2sem2021;

create table cliente(
codigo_id_cli int identity,
nome_cli varchar(100) not null,
cnpj_cli varchar(14),
primary key (codigo_id_cli));

create table estado(
sigla_id_est char(2),
nome_est varchar(50),
primary key (sigla_id_est));

create table area(
codigo_id_are int identity,
nome_are varchar(100),
primary key (codigo_id_are));

create table cargo(
codigo_id_car int identity,
nome_car varchar(50),
vlhoras_car numeric(10,2),
primary key (codigo_id_car));

create table projeto(
codigo_id_pro int identity,
nome_pro varchar(100),
descricao_pro varchar(300),
codigo_id_cli int,
codigo_id_are int,
dtinicio_pro date,
dtfim_pro date,
tothoraestimada_pro numeric(10,2),
primary key (codigo_id_pro),
foreign key (codigo_id_cli) references cliente,
foreign key (codigo_id_are) references area);

create table cliente_endereco(
codigo_id_end int identity,
codigo_id_cli int,
logradouro_end varchar(100),
numero_end int,
bairro_end varchar(50),
cidade_end varchar(50),
sigla_id_est char(2),
cep_end varchar(8),
primary key (codigo_id_end, codigo_id_cli),
foreign key (codigo_id_cli) references cliente,
foreign key (sigla_id_est) references estado);

create table cliente_telefone(
codigo_id_tel int identity,
codigo_id_cli int,
ddd_tel varchar(3),
numero_tel varchar(10),
primary key (codigo_id_tel, codigo_id_cli),
foreign key (codigo_id_cli) references cliente);

create table cliente_email(
codigo_id_cli int,
email_cli varchar(100),
primary key (codigo_id_cli, email_cli),
foreign key (codigo_id_cli) references cliente);

create table funcionario (
codigo_id_fun int identity,
nome_fun varchar(100),
codigo_id_car int,
primary key (codigo_id_fun),
foreign key (codigo_id_car) references cargo);

create table projeto_funcionario(
codigo_id_pro int,
codigo_id_fun int,
horas_prf  numeric(10,2),
vltotal_prf numeric(10,2),
primary key (codigo_id_pro, codigo_id_fun),
foreign key (codigo_id_pro) references projeto,
foreign key (codigo_id_fun) references funcionario);
