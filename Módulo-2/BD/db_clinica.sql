create database dbclinica;

use dbclinica;

create table quarto(
	numero_id_qua int identity primary key,
	descricao_qua varchar(100) not null,
	comodos_qua int not null
);

create table paciente(
	numero_id_pac int identity primary key,
	numero_id_qua int not null,
	nome_pac varchar(60) not null
);

create table medico(
	numero_id_med int identity primary key,
	nome_med varchar(60) not null,
	fone_med varchar(15) not null
);

create table atende(
	numero_id_pac int foreign key (numero_id_pac) references paciente,
	numero_id_med int foreign key (numero_id_med) references medico,
	primary key (numero_id_pac, numero_id_med),
	observa_ate varchar(200) not null,
);

alter table atende add data_ate date not null;

alter table quarto drop column comodos_qua;

set identity_insert quarto on;
insert into quarto (numero_id_qua, descricao_qua) values (1, 'Observação');

update medico set nome_med = 'Marco', fone_med = '99999-9999' where numero_id_med = 23;