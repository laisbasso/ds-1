use dbProjeto2sem2021;

-- pesquisar cliente pelo código
create procedure p_sel_cliente
@codigocli int
As
	select codigo_id_cli,
			nome_cli,
			cnpj_cli
	from cliente
	where codigo_id_cli = @codigocli;

execute p_sel_cliente 3;

-- pesquisar funcionário pelo código
create procedure p_sel_funcionario
@codigofun int
As
	select t1.codigo_id_fun,
		   t1.nome_fun,
		   t2.nome_car,
		   t2.vlhoras_car
	from funcionario t1
	inner join cargo t2 on t1.codigo_id_car = t2.codigo_id_car
	where codigo_id_fun = @codigofun;

execute p_sel_funcionario 1;

-- alterar procedure funcionário para buscar por nome
alter procedure p_sel_funcionario
@nomefun varchar(100)
As
	select t1.codigo_id_fun,
		   t1.nome_fun,
		   t2.nome_car,
		   t2.vlhoras_car
	from funcionario t1
	inner join cargo t2 on t1.codigo_id_car = t2.codigo_id_car
	where nome_fun like '%' + @nomefun + '%';

execute p_sel_funcionario 'ca';

-- inserir dados na tabela cargo
create procedure p_ins_cargo
@nomecar varchar(50),
@vlhora numeric(10,2)
As
	insert into cargo (nome_car, vlhoras_car)
		values (@nomecar, @vlhora);

execute p_ins_cargo 'Tester', 15.50;

select * from cargo;

-- pesquisar email pelo código do cliente
create procedure p_sel_email
@codigocli int
As
	select t1.codigo_id_cli,
		   t1.nome_cli,
		   t2.email_cli
	from cliente t1
	inner join cliente_email t2 on t1.codigo_id_cli = t2.codigo_id_cli
	where t1.codigo_id_cli = @codigocli;

execute p_sel_email 3;

-- inserir dados na tabela area
create procedure p_ins_area
@nomearea varchar(100)
As
	insert into area (nome_are)
		values (@nomearea);

execute p_ins_area 'Cloud';

select * from area;

