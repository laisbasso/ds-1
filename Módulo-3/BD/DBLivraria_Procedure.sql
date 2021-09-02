use db_livraria;

-- Criar procedure – p_sel_carrinho – Para pesquisar carrinho de compras com os campos: número do carrinho, nome do cliente, data do pedido,
-- condição de pagamento, título do livro, descrição do formato do livro, descrição da editora, valor de venda, quantidade, total de item,
-- onde parâmetro de pesquisa será o número do carrinho. Escrever um exemplo de execução.

create procedure p_sel_carrinho
@codigocarrinho int
as
select car.numero_id_car,
	   cli.nome_cli,
	   car.data_pedido_car,
	   pag.descricao_pag,
	   liv.titulo_liv,
	   form.descricao_for,
	   edi.nome_ed,
	   liv.vlvenda_liv,
	   ite.qtdade_item,
	   ite.vltotal_item
from carrinho car
inner join cliente cli on car.login_id_cli = cli.login_id_cli
inner join pagamento pag on car.codigo_id_pag = pag.codigo_id_pag
inner join item_carrinho ite on car.numero_id_car = ite.numero_id_car
inner join livro liv on ite.isbn_id_liv = liv.isbn_id_liv
inner join formato_livro form on liv.codigo_id_for = form.codigo_id_for
inner join editora edi on liv.codigo_id_ed = edi.codigo_id_ed
where car.numero_id_car = @codigocarrinho;

execute p_sel_carrinho 2; 

-- Criar uma procedure – p_sel_livros-  Para pesquisar livros com os campos: ISBN, Titulo, data de publicação, descrição do formato,
-- descrição da editora, descrição da categoria, nome dos autores, preço de custo e preço de venda, onde parâmetro de pesquisa será 
-- qualquer parte do título do livro. Escrever um exemplo de execução.

k

-- Criar uma procedure – p_ins_cliente – Para inserir registro em todos os campos da tabela cliente.  Escrever um exemplo de execução.

select * from cliente;

create procedure p_ins_cliente
@loginidcli varchar(10), @senhacli varchar(8), @nomecli varchar(50), @cpfcli varchar(11),
@telefonecli varchar(15), @emailcli varchar(100), @enderecocli varchar(100), @complementocli varchar(15),
@bairrocli varchar(20), @cidadecli varchar(30), @ufidest char(2), @cepcli varchar(8)
as
	insert into cliente values (@loginidcli, @senhacli, @nomecli, @cpfcli, @telefonecli, @emailcli,
								@enderecocli, @complementocli, @bairrocli, @cidadecli, @ufidest, @cepcli);

execute p_ins_cliente "luninha", "sache", "Luna", "12345678901", "11111111111", "luna@miau.com", "Rua dos Sachês", "123", "Bairro da Lua", "São Sachê", "SP", "98765432";
