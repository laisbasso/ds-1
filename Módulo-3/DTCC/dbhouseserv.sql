drop database dbhouseserv;

use dbhouseserv;

create table estado_cidade(
  id int identity primary key,
  estado varchar(2) not null,
  cidade varchar(30) not null
);

create table endereco(
  id int identity primary key,
  cep varchar(8) not null,
  logradouro varchar(60) not null,
  numero varchar(5) not null,
  complemento varchar(20) not null,
  estado_cidade int not null,
  foreign key (estado_cidade) references estado_cidade,
);
  
create table documentos(
  id int identity primary key,
  doc_frente varchar(320) not null, 
  doc_verso varchar(320) not null,
  foto_rosto varchar(320) not null
);

drop table documentos;
drop table endereço;

create table dados_pessoais(
  id int identity primary key,
  endereco int,
  documentos int,
  email varchar(40) not null unique,
  senha varchar(60) not null,
  senhahash varchar(260) not null,
  senhasalt varchar(260) not null,
  pf_pj varchar(8) not null,
  nome varchar(60) not null,
  cpf_cnpj varchar(14) not null unique,
  telefone varchar(13) not null,
  status varchar(10) not null,
  foreign key (endereco) references endereco,
  foreign key (documentos) references documentos,
);
 
create table cliente(
  id int identity primary key,
  dados_pessoais int not null,
  foreign key (dados_pessoais) references dados_pessoais,
);

create table banco(
  id int identity primary key,
  nome varchar(25) not null,
  codigo varchar(3) not null
);

create table conta(
  id int identity primary key,
  numero varchar(8) not null,
  tipo_conta varchar(8) not null,
  agencia varchar(5) not null,
  banco int not null,
  foreign key (banco) references banco
);

create table parceiro(
  id int identity primary key,
  dados_pessoais int not null,
  conta int not null,
  foreign key (dados_pessoais) references dados_pessoais,
  foreign key (conta) references conta,
);

create table servico(
  id int identity primary key,
  servico varchar(60) not null,
  valor_minuto int not null,
  parceiro int not null,
  foreign key (parceiro) references parceiro
);
 
create table cartao(
  id int identity primary key,
  endereco_cobranca int not null,
  numero varchar(16) not null,
  codigo_seguranca varchar(3) not null,
  cpf varchar(11) not null,
  nome varchar(60) not null,
  validade date not null,
  foreign key (endereco_cobranca) references endereco
);

create table pagamento(
  id int identity primary key,
  cartao int not null,  
  endereco_cobranca int not null,
  conta_destino int not null,
  resultado varchar(10) not null,
  instante datetime not null,
  foreign key (cartao) references cartao,
  foreign key (endereco_cobranca) references endereco,
  foreign key (conta_destino) references conta
);
 
create table cliente_avalia_parceiro(
  id int identity primary key,
  cliente_avaliador int not null,
  parceiro_avaliado int not null,
  nota decimal(2,1) not null,
  foreign key (cliente_avaliador) references cliente,
  foreign key (parceiro_avaliado) references parceiro,
);
 
create table parceiro_avalia_cliente(
  id int identity primary key,
  parceiro_avaliador int not null,
  cliente_avaliado int not null,
  nota decimal(2,1) not null,
  foreign key (parceiro_avaliador) references parceiro,
  foreign key (cliente_avaliado) references cliente,
);
 
create table contratacao( 
  id int identity primary key,
  pagamento int not null,
  servico int not null,  endereco int not null,
  cliente_avalia_parceiro int not null,
  parceiro_avalia_cliente int not null, 
  ponto_de_referencia varchar(30) not null,
  tipo_residencia varchar(11) not null,
  descricao_pets varchar(60) not null,
  duracao int not null,
  inclui_almoco bit not null,
  instante_contratacao datetime not null,
  instante_realizacao datetime not null,
  status varchar(30) not null,
  foreign key (pagamento) references pagamento,
  foreign key (servico) references servico,
  foreign key (endereco) references endereco,
  foreign key (cliente_avalia_parceiro) references cliente_avalia_parceiro,
  foreign key (parceiro_avalia_cliente) references parceiro_avalia_cliente
);
