use db_livraria;

-- 1)	Selecionar o Título do livro, contar a quantidade de categoria por livro e ordenar por título do livro.
select livro.titulo_liv, sum(livro_categoria.codigo_id_cat) as qtd_categoria_por_livro
from livro
inner join livro_categoria on livro.isbn_id_liv = livro_categoria.isbn_id_liv
group by livro.titulo_liv;

-- 2)	Selecionar o número do carrinho, nome do cliente, data de pedido e somar o valor total de cada carrinho.
select carrinho.numero_id_car, cliente.nome_cli, carrinho.data_pedido_car,
(item_carrinho.qtdade_item * item_carrinho.vltotal_item) as valor_total
from carrinho
inner join cliente on carrinho.login_id_cli = cliente.login_id_cli
inner join item_carrinho on carrinho.numero_id_car = item_carrinho.numero_id_car;

-- 3)	Selecionar o nome da editora, somar o valor de custo do livro por editora e exibir a lista apenas onde a soma do valor de custo é acima de R$ 100,00.
select editora.nome_ed
from editora
inner join livro on editora.codigo_id_ed = livro.codigo_id_ed
group by editora.nome_ed
having sum(livro.vlcusto_liv) > 100;

-- 4)	Selecionar título do livro, nome do autor dos livros com valor de custo acima de R$ 30,00 e unir com a seleção de título de livro, nome do autor, sendo o código da editora 10, 15, 20.
select livro.titulo_liv, autor.nome_aut
from livro_autor
inner join livro on livro_autor.isbn_id_liv = livro.isbn_id_liv
inner join autor on livro_autor.codigo_id_au = autor.codigo_id_au
where livro.vlcusto_liv > 5
and livro.codigo_id_ed in (10,15,20);

-- 5)	Selecionar ISBN, titulo de livros, sendo os livros com código das categorias 1, 3,11,23,16 e código do autor < 5, não exibir registros em duplicidade.
select distinct livro.isbn_id_liv, livro.titulo_liv 
from livro
inner join livro_categoria on livro_categoria.isbn_id_liv = livro.isbn_id_liv
inner join livro_autor on livro.isbn_id_liv = livro.isbn_id_liv
where
livro_categoria.codigo_id_cat in (1,3,11,16,23)
and livro_autor.codigo_id_au < 5;

-- 6)	Criar uma view vwPedidosclientes com os campos número do carrinho, data do pedido no formato (dd/mm/aa), nome do cliente, descrição da condição de pagamento, nome do funcionário.
create view vwPedidosclientes as
select carrinho.numero_id_car, format (carrinho.data_pedido_car, 'dd/MM/yyyy') as data_pedido_car, cliente.nome_cli, pagamento.descricao_pag, funcionario.nome_fun
from carrinho
inner join cliente on carrinho.login_id_cli = cliente.login_id_cli
inner join pagamento on carrinho.codigo_id_pag = pagamento.codigo_id_pag
inner join funcionario on carrinho.codigo_id_fun = funcionario.codigo_id_fun;

-- 7)	Criar uma view vwListalivros com os campos ISBN, Título do Livro, descrição da capa, nome editora, valor de venda.
create view vwListalivros as
select livro.isbn_id_liv, livro.titulo_liv, formato_livro.descricao_for, editora.nome_ed, livro.vlvenda_liv
from livro
inner join formato_livro on livro.codigo_id_for = formato_livro.codigo_id_for
inner join editora on livro.codigo_id_ed = editora.codigo_id_ed;