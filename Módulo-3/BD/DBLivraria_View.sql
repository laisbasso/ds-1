use db_livraria;

-- Criar uma view vwPedidosclientes com os campos número do carrinho, data do pedido no formato (dd/mm/aa), nome do cliente, descrição da condição de pagamento, nome do funcionário.

create view vwPedidosclientes as
select car.numero_id_car,
	   format(car.data_pedido_car, 'dd/MM/yy') as data_pedido_car,
	   cli.nome_cli,
	   pag.descricao_pag,
	   fun.nome_fun
from carrinho car
inner join cliente cli on car.login_id_cli = cli.login_id_cli
inner join pagamento pag on car.codigo_id_pag = pag.codigo_id_pag
inner join funcionario fun on car.codigo_id_fun = fun.codigo_id_fun;

select * from vwPedidosclientes;

-- Criar uma view vwListalivros com os campos ISBN, Título do Livro, descrição da capa, nome editora, valor de venda.

create view vwListalivros as
select liv.isbn_id_liv,
	   liv.titulo_liv,
	   form.descricao_for,
	   edi.nome_ed,
	   liv.vlvenda_liv
from livro liv
inner join formato_livro form on liv.codigo_id_for = form.codigo_id_for
inner join editora edi on liv.codigo_id_ed = edi.codigo_id_ed;

select * from vwListalivros;