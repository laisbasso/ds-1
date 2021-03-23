-- Exercício 1

use db_empresa;

insert into cliente values
	('Lais'),
	('Laura'),
	('Luna'),
	('Kero'),
	('Isa');

select * from cliente;
	   
insert into area values
	('TI'),
	('RH'),
	('MKT');

select * from area;

insert into cargo values
	('Desenvolvedora', 50),
	('Gerente', 15),
	('Tester', 43);

select * from cargo;

insert into projeto values
	('DevTech', 'Consultoria', 1, 1, '29-01-2021', '29-06-2021', 840),
	('E-Tech', 'Consultoria', 2, 1, '29-07-2020', '29-11-2020', 840),
	('Cinetec', 'Aplicativo mobile', 3, 1, '29-07-2020', '29-11-2020', 840);

select * from projeto;

insert into estado values
	('S', 'São Paulo'),
	('M', 'Minas Gerais');

select * from estado;

insert into cliente_email values
	(1, 'lais@email.com'),
	(2, 'laura@email.com'),
	(3, 'luna@email.com'),
	(4, 'kero@email.com'),
	(5, 'isa@email.com');

select * from cliente_email;

insert into cliente_endereco values
	(1, 'Rua 1', 123, 'Vila 1', 'São Paulo', 'S', '12345000'),
	(1, 'Rua 1', 456, 'Vila 1', 'Minas Gerais', 'M', '12345000'),
	(2, 'Rua 2', 123, 'Vila 2', 'São Paulo', 'S', '23456000'),
	(2, 'Rua 2', 456, 'Vila 2', 'Minas Gerais', 'M', '23456000'),
	(3, 'Rua 3', 123, 'Vila 3', 'São Paulo', 'S', '34567000'),
	(3, 'Rua 3', 456, 'Vila 3', 'Minas Gerais', 'M', '34567000'),
	(4, 'Rua 4', 123, 'Vila 4', 'São Paulo', 'S', '45678000'),
	(4, 'Rua 4', 456, 'Vila 4', 'Minas Gerais', 'M', '45678000'),
	(5, 'Rua 5', 123, 'Vila 5', 'São Paulo', 'S', '56789000'),
	(5, 'Rua 5', 456, 'Vila 5', 'Minas Gerais', 'M', '56789000');
		
select * from cliente_endereco;

insert into funcionario values
	(1),
	(2),
	(3),
	(1),
	(2),
	(3);

select * from funcionario;

insert into projeto_funcionario values
	(1, 1, 420, 50),
	(1, 2, 420, 15),
	(2, 3, 420, 43),
	(2, 4, 420, 50),
	(3, 5, 420, 15),
	(3, 6, 420, 43);

select * from projeto_funcionario;

-- Exercício 2

set identity_insert projeto on;
insert into projeto (codigo_id_pro, nome_pro, codigo_id_cli, codigo_id_are) values
	(4, 'Livraria Digital', 4, 1);

-- Exercício 3

update area set nome_are = 'ADM' where codigo_id_are = 2;

-- Exercício 4

update cargo set vlhoras_car = vlhoras_car + (vlhoras_car * 0.1);

-- Exercício 5

delete from cliente_endereco where codigo_id_cli = 5;
delete from cliente_email where codigo_id_cli = 5;
delete from cliente where codigo_id_cli = 5;