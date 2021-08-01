-- criando view
CREATE VIEW vw_dados_cliente AS
SELECT cli.codigo_id_cli,
       cli.nome_cli,
	   tel.ddd_tel,
	   tel.numero_tel,
	   ema.email_cli,
	   ende.cidade_end,
	   ende.sigla_id_est
FROM cliente cli
INNER JOIN cliente_telefone tel on tel.codigo_id_cli = cli.codigo_id_cli
INNER JOIN cliente_email ema on ema.codigo_id_cli = cli.codigo_id_cli
INNER JOIN cliente_endereco ende on ende.codigo_id_cli = cli.codigo_id_cli;

-- selecionando view
select * from vw_dados_cliente;

-- alterando view
ALTER VIEW vw_dados_cliente AS
SELECT cli.codigo_id_cli,
       cli.nome_cli,
	   tel.ddd_tel,
	   tel.numero_tel,
	   ema.email_cli,
	   ende.cidade_end,
	   ende.sigla_id_est
FROM cliente cli
LEFT JOIN cliente_telefone tel on tel.codigo_id_cli = cli.codigo_id_cli
LEFT JOIN cliente_email ema on ema.codigo_id_cli = cli.codigo_id_cli
LEFT JOIN cliente_endereco ende on ende.codigo_id_cli = cli.codigo_id_cli;

-- usando view
select pro.codigo_id_pro,
pro.nome_pro,
dad.nome_cli,
dad.email_cli,
dad.ddd_tel,
dad.numero_tel
from projeto pro
inner join vw_dados_cliente dad on pro.codigo_id_cli = dad.codigo_id_cli;