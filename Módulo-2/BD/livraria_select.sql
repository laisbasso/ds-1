use db_livraria;

-- 1. Selecionar os títulos dos livros, descrição do formato, nome da editora em ordem crescente por nome da editora. (cláusula where).
select livro.titulo_liv, formato_livro.descricao_for, editora.nome_ed
from livro, formato_livro, editora
where livro.codigo_id_for = formato_livro.codigo_id_for and livro.codigo_id_ed = editora.codigo_id_ed
order by editora.nome_ed;

-- 2. Selecionar o nome do cliente,  número do carrinho, data do pedido e a condição de pagamento em ordem crescente pelo nome do cliente. (cláusula join).
select cliente.nome_cli, carrinho.numero_id_car, carrinho.data_pedido_car, pagamento.descricao_pag
from cliente
inner join carrinho on cliente.login_id_cli = carrinho.login_id_cli
inner join pagamento on carrinho.codigo_id_pag = pagamento.codigo_id_pag
order by cliente.nome_cli;

-- 3. Selecionar os títulos dos livros e nome das categorias dos livros com valores de venda acima de R$ 30,00. (qualquer cláusula).
select livro.titulo_liv, categoria.descricao_cat
from livro
inner join livro_categoria on livro_categoria.isbn_id_liv = livro.isbn_id_liv
inner join categoria on livro_categoria.codigo_id_cat = categoria.codigo_id_cat
where livro.vlvenda_liv > 30;

-- 4. Selecionar os Livros com ISBN, titulo, data de publicação, descrição do formato, descrição da editora, descrição da categoria, nome dos autores, preço de custo e preço de venda em ordem crescente por nome da categoria, nome de editora e nome do autor. (cláusula  where).
select livro.isbn_id_liv, livro.titulo_liv, livro.dtpublicacao_liv, formato_livro.descricao_for, editora.nome_ed, categoria.descricao_cat, autor.nome_aut, livro.vlcusto_liv, livro.vlvenda_liv
from livro, formato_livro, editora, livro_categoria, categoria, livro_autor, autor
where livro.codigo_id_for = formato_livro.codigo_id_for and livro.codigo_id_ed = editora.codigo_id_ed and livro_categoria.codigo_id_cat = categoria.codigo_id_cat and livro_autor.codigo_id_au = autor.codigo_id_au
order by categoria.descricao_cat, editora.nome_ed, autor.nome_aut;

-- 5. Selecionar os livros com ISBN, titulo, data de publicação, descrição do formato, descrição da editora, descrição da categoria, nome dos autores, preço de custo e preço de venda em ordem crescente por nome da categoria, nome de editora e nome do autor. (cláusula Join).
select livro.isbn_id_liv, livro.titulo_liv, livro.dtpublicacao_liv, formato_livro.descricao_for, editora.nome_ed, categoria.descricao_cat, autor.nome_aut, livro.vlcusto_liv, livro.vlvenda_liv
from livro
inner join formato_livro on livro.codigo_id_for = formato_livro.codigo_id_for
inner join editora on livro.codigo_id_ed = editora.codigo_id_ed
inner join livro_categoria on livro.isbn_id_liv = livro_categoria.isbn_id_liv
inner join categoria on livro_categoria.codigo_id_cat = categoria.codigo_id_cat
inner join livro_autor on livro.isbn_id_liv = livro_categoria.isbn_id_liv
inner join autor on livro_autor.codigo_id_au = autor.codigo_id_au
order by categoria.descricao_cat, editora.nome_ed, autor.nome_aut;

-- 6. Selecionar o numero do carrinho, nome do cliente, data do pedido, condição de pagamento, título do livro, descrição do formato do livro, descrição da editora, valor de venda, quantidade, total de item. (qualquer cláusula).
select carrinho.numero_id_car, cliente.nome_cli, carrinho.data_pedido_car, pagamento.descricao_pag, livro.titulo_liv, formato_livro.descricao_for, editora.nome_ed, livro.vlvenda_liv, item_carrinho.qtdade_item, item_carrinho.vltotal_item
from carrinho
inner join cliente on carrinho.login_id_cli = cliente.login_id_cli
inner join pagamento on carrinho.codigo_id_pag = pagamento.codigo_id_pag
inner join item_carrinho on carrinho.numero_id_car = item_carrinho.numero_id_car
inner join livro on item_carrinho.isbn_id_liv = livro.isbn_id_liv
inner join formato_livro on livro.codigo_id_for = formato_livro.codigo_id_for
inner join editora on livro.codigo_id_ed = editora.codigo_id_ed

-- 7. Selecionar os titulos dos livros e a descrição de todos os tipos de capas mesmo que não tenha livro cadastrado.
select livro.titulo_liv, formato_livro.descricao_for
from livro
right join formato_livro on livro.codigo_id_for = formato_livro.codigo_id_for;

-- 8. Selecionar o livro com menor preço de venda.
select min(vlcusto_liv) as menor_preco from livro;

-- 9. Pesquisar a média do preço de venda dos livros.
select avg(vlcusto_liv) as preco_medio from livro;

-- 10.	Selecionar nome das editoras, titulos dos livros e valor de venda, agrupando por editora.
select editora.nome_ed, livro.titulo_liv, livro.vlvenda_liv
from editora
inner join livro on editora.codigo_id_ed = livro.codigo_id_ed
group by editora.nome_ed, livro.titulo_liv, livro.vlvenda_liv;