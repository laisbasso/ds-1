create database db_livraria;

use db_livraria;

create table estado(
	uf_id_est char(2) not null,
	descricao_uf char(20) not null,
	primary key (uf_id_est)
);

create table pagamento(
	codigo_id_pag int identity not null,
	descricao_pag varchar(30) not null,
	primary key (codigo_id_pag)
);

create table funcionario(
	codigo_id_fun int identity not null,
	nome_fun varchar(50) not null,
	primary key (codigo_id_fun)
);

create table autor(
	codigo_id_au int identity not null,
	nome_aut varchar(60) not null,
	dtnascimento_aut date not null,
	primary key (codigo_id_au)
);

create table categoria(
	codigo_id_cat int identity not null,
	descricao_cat varchar(30) not null,
	primary key (codigo_id_cat)
);

create table editora(
	codigo_id_ed int identity not null,
	nome_ed varchar(60) not null,
	primary key (codigo_id_ed)
);

create table formato_livro(
	codigo_id_for int identity not null,
	descricao_for varchar(20) not null,
	primary key (codigo_id_for)
);

create table cliente(
	login_id_cli varchar(10) not null,
	senha_cli varchar(8) not null,
	nome_cli varchar(50) not null,
	cpf_cli varchar(11) not null,
	telefone_cli varchar(15) not null,
	email_cli varchar(100) not null,
	endereco_cli varchar(100) not null,
	complemento_cli varchar(15) not null,
	bairro_cli varchar(20) not null,
	cidade_cli varchar(30) not null,
	uf_id_est char(2) not null,
	cep_cli varchar(8) not null,
	primary key (login_id_cli),
	foreign key (uf_id_est) references estado
);

create table livro(
	isbn_id_liv char(15) not null,
	titulo_liv varchar(100) not null,
	resumo_liv varchar(250) not null,
	codigo_id_for int not null,
	codigo_id_ed int not null,
	dtpublicacao_liv date not null,
	vlcusto_liv numeric(10,2) not null,
	vlvenda_liv numeric(10,2) not null,
	primary key (isbn_id_liv),
	foreign key (codigo_id_for) references formato_livro,
	foreign key (codigo_id_ed) references editora
);

create table livro_autor(
	isbn_id_liv char(15) not null,
	codigo_id_au int not null,
	primary key (isbn_id_liv, codigo_id_au),
	foreign key (isbn_id_liv) references livro,
	foreign key (codigo_id_au) references autor,
);

create table livro_categoria(
	isbn_id_liv char(15) not null,
	codigo_id_cat int not null,
	primary key (isbn_id_liv, codigo_id_cat),
	foreign key (isbn_id_liv) references livro,
	foreign key (codigo_id_cat) references categoria,
);

create table carrinho(
	numero_id_car int identity not null,
	login_id_cli varchar(10) not null,
	data_pedido_car datetime not null,
	data_entrega_car datetime not null,
	endereco_entrega_car varchar(60) not null,
	complemento_entrega_car varchar(15) not null,
	bairro_entrega_car varchar(20) not null,
	cidade_entrega_car varchar(30) not null,
	uf_id_est char(2) not null,
	codigo_id_pag int not null,
	codigo_id_fun int not null,
	primary key (numero_id_car),
	foreign key (login_id_cli) references cliente,
	foreign key (uf_id_est) references estado,
	foreign key (codigo_id_pag) references pagamento,
	foreign key (codigo_id_fun) references funcionario
);

create table item_carrinho(
	isbn_id_liv char(15) not null,
	numero_id_car int not null,
	qtdade_item int not null,
	vltotal_item numeric(10,2) not null,
	situacao_item char(1) not null,
	primary key (isbn_id_liv, numero_id_car),
	foreign key (isbn_id_liv) references livro,
	foreign key (numero_id_car) references carrinho
);
