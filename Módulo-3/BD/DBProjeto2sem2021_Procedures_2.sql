use dbProjeto2sem2021;

create procedure p_ins_projfuncionario_1
@codprojeto int,
@codfuncionario int,
@hprf numeric(10,2),
@vltotalprf numeric(10,2)
as
begin
	insert into projeto_funcionario
				(codigo_id_pro, codigo_id_fun, horas_prf, vltotal_prf)
	values (@codprojeto, @codfuncionario, @hprf, @vltotalprf)
end;

execute p_ins_projfuncionario_1 5, 9, 200, 5356;

select * from projeto_funcionario;

create procedure p_ins_projfuncionario_2
@codprojeto int,
@codfuncionario int,
@hprf numeric(10,2)
as
begin
	declare @vlhora numeric(10,2)

	select @vlhora = t2.vlhoras_car
	from funcionario t1
	inner join cargo t2 on t1.codigo_id_car = t2.codigo_id_car
	where t1.codigo_id_fun = @codfuncionario

	insert into projeto_funcionario
				(codigo_id_pro, codigo_id_fun, horas_prf, vltotal_prf)
	values (@codprojeto, @codfuncionario, @hprf, @hprf * @vlhora)
end;

execute p_ins_projfuncionario_2 5, 5, 100;

create procedure p_ins_projfuncionario_3
@nomepro varchar(100),
@descricaopro varchar(300),
@codcliente int,
@codare int,
@dtinicio date,
@dtfim date,
@tothestimada numeric(10,2),
@codfuncionario int,
@hprf numeric(10,2),
@int_Identity_proj int output
as
begin
declare @vlhora numeric(10,2)



-- selecionar o valor horas
select @vlhora = t2.vlhoras_car
from funcionario t1
inner join cargo t2 on t1.codigo_id_car = t2.codigo_id_car
where t1.codigo_id_fun = @codfuncionario;



-- inserir projeto
insert into projeto
(nome_pro,
descricao_pro,
codigo_id_cli,
codigo_id_are,
dtinicio_pro,
dtfim_pro,
tothoraestimada_pro)
values
(@nomepro,
@descricaopro,
@codcliente,
@codare,
@dtinicio,
@dtfim,
@tothestimada);

SET @int_Identity_proj = (SELECT @@IDENTITY)




--inserir registro na tabela projeto_funcionario
insert into projeto_funcionario
(codigo_id_pro,
codigo_id_fun,
horas_prf,
vltotal_prf)
values
(@int_Identity_proj,
@codfuncionario,
@hprf,
@hprf*@vlhora);
end;
