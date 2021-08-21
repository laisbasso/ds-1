create database DBLivraria2sem2021;

use DBLivraria2sem2021;

/*ESTADO*/
create table estado(
uf_id_est char(2),
descricao_uf char(20),
primary key (uf_id_est));

/*PAGAMENTO*/
create table pagamento (
codigo_id_pag int identity,
descricao_pag varchar(30),
primary key (codigo_id_pag));

/*FUNCIONARIO*/
create table funcionario(
codigo_id_fun int identity,
nome_fun varchar(50),
primary key (codigo_id_fun));

/*AUTOR*/
create table autor (
codigo_id_aut int identity,
nome_aut varchar(60),
dtnascimento_aut date,
primary key (codigo_id_aut));

/*CATEGORIA*/
create table categoria (
codigo_id_cat int identity,
descricao_cat varchar(30),
primary key (codigo_id_cat));

/*EDITORA*/
create table editora(
codigo_id_ed int identity,
nome_ed varchar(60),
primary key (codigo_id_ed));

/*FORMATO_LIVRO*/
create table formato_livro(
codigo_id_for int identity,
descricao_for varchar(20),
primary key (codigo_id_for));

/*CLIENTE*/
create table cliente(
login_id_cli varchar(10),
senha_cli varchar(8),
nome_cli varchar(50),
cpf_cli varchar(11),
telefone_cli varchar(15),
email_cli varchar(100),
endereco_cli varchar(100),
complemento_cli varchar(15),
bairro_cli varchar(20),
cidade_cli varchar(30),
uf_id_est char(2),
cep_cli varchar(8),
primary key (login_id_cli),
foreign key (uf_id_est) references estado);

/*LIVRO*/
create table livro(
isbn_id_liv char(15),
titulo_liv varchar(100),
resumo_liv varchar(250),
codigo_id_for int,
codigo_id_ed int,
dtpublicacao_liv date,
vlcusto_liv numeric(10,2),
vlvenda_liv numeric(10,2),
primary key (isbn_id_liv),
foreign key (codigo_id_for) references formato_livro,
foreign key (codigo_id_ed) references editora);

/*LIVRO_AUTOR*/
create table livro_autor(
isbn_id_liv char(15),
codigo_id_aut int,
primary key(isbn_id_liv, codigo_id_aut),
foreign key (isbn_id_liv) references livro,
foreign key (codigo_id_aut) references autor);

/*LIVRO_CATEGORIA*/
create table livro_categoria(
isbn_id_liv char(15),
codigo_id_cat int,
primary key (isbn_id_liv, codigo_id_cat),
foreign key (isbn_id_liv) references livro,
foreign key (codigo_id_cat) references categoria);

/*CARRINHO*/
create table carrinho(
numero_id_car int identity,
login_id_cli varchar(10),
data_pedido_car datetime,
data_entrega_car datetime,
endereco_entrega_car varchar(60),
complemento_entrega_car varchar(15),
bairro_entrega_car varchar(20),
cidade_entrega_car varchar(30),
uf_id_est char(2),
codigo_id_pag int,
codigo_id_fun int,
primary key (numero_id_car),
foreign key (login_id_cli) references cliente,
foreign key (uf_id_est) references estado,
foreign key (codigo_id_pag) references pagamento,
foreign key (codigo_id_fun) references funcionario);

/*ITEM_CARRINHO*/
create table item_carrinho(
isbn_id_liv char(15),
numero_id_car int,
qtdade_item int,
vltotal_item numeric(10,2),
situacao_item char(1),
primary key (isbn_id_liv, numero_id_car),
foreign key (isbn_id_liv) references livro,
foreign key (numero_id_car) references carrinho);