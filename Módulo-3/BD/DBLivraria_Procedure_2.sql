-- trio: Lais Basso, Gustavo Gomes e Arthur Esteves

use DBLivraria2sem2021;

-- Criar uma procedure – p_gravar_livro – com opção para incluir e alterar os registros na tabela LIVRO.

create procedure p_gravar_livro
@isbnidliv char(15),
@tituloliv varchar(100),
@resumoliv varchar(250),
@codigoidfor int,
@codigoided int,
@dtpublicacaoliv date,
@vlcustoliv numeric(10,2),
@vlvendaliv numeric(10,2)
as
begin
	declare @isbnexiste int

	select @isbnexiste = 1 from livro where isbn_id_liv = @isbnidliv;

	if @isbnexiste = 1
		update livro set 
			isbn_id_liv = @isbnidliv,
			titulo_liv = @tituloliv,
			resumo_liv = @resumoliv, 
			codigo_id_for = @codigoidfor,
			codigo_id_ed = @codigoided, 
			dtpublicacao_liv = @dtpublicacaoliv,
			vlcusto_liv = @vlcustoliv, 
			vlvenda_liv = @vlvendaliv
		where isbn_id_liv = @isbnidliv

	else
	insert into livro
					(isbn_id_liv, titulo_liv, resumo_liv, codigo_id_for, codigo_id_ed, dtpublicacao_liv, vlcusto_liv, vlvenda_liv)
		values (@isbnidliv, @tituloliv, @resumoliv, @codigoidfor, @codigoided, @dtpublicacaoliv, @vlcustoliv, @vlvendaliv)
end;

execute p_gravar_livro '8533613370', 'O senhor dos anéis I - Edição Limitada', 'Térra Média', 1, 13, '2010-02-03', 30, 50; 

select * from livro where isbn_id_liv = '8533613370';    

select 1 from livro where isbn_id_liv = '8533613370';
select 1 from livro where isbn_id_liv = 'aaa';

-- procedure 2

create procedure p_gravar_livro2
@isbnidliv char(15),
@tituloliv varchar(100),
@resumoliv varchar(250),
@codigoidfor int,
@codigoided int,
@dtpublicacaoliv date,
@vlcustoliv numeric(10,2),
@vlvendaliv numeric(10,2)
as
begin

	if exists (select * from livro where isbn_id_liv = @isbnidliv)
		update livro set 
			isbn_id_liv = @isbnidliv,
			titulo_liv = @tituloliv,
			resumo_liv = @resumoliv, 
			codigo_id_for = @codigoidfor,
			codigo_id_ed = @codigoided, 
			dtpublicacao_liv = @dtpublicacaoliv,
			vlcusto_liv = @vlcustoliv, 
			vlvenda_liv = @vlvendaliv
		where isbn_id_liv = @isbnidliv

	else
	insert into livro
					(isbn_id_liv, titulo_liv, resumo_liv, codigo_id_for, codigo_id_ed, dtpublicacao_liv, vlcusto_liv, vlvenda_liv)
		values (@isbnidliv, @tituloliv, @resumoliv, @codigoidfor, @codigoided, @dtpublicacaoliv, @vlcustoliv, @vlvendaliv)
end;

execute p_gravar_livro2 'aa', 'O senhor dos anéis II - Edição Limitada', 'Térra Média', 1, 13, '2010-02-03', 30, 50; 

select * from livro where isbn_id_liv = 'aa';    

-- Criar uma procedure – p_ins_livro_completo – para inserir o registro na tabela LIVRO, CATEGORIA e AUTOR.

select * from categoria;
select * from autor;

create procedure p_ins_livro_completo 
@isbnidliv char(15),
@tituloliv varchar(100),
@resumoliv varchar(250),
@codigoidfor int,
@codigoided int,
@dtpublicacaoliv date,
@vlcustoliv numeric(10,2),
@vlvendaliv numeric(10,2),
@descricaocat varchar(30),
@nomeaut varchar(60),
@dtnascimentoaut date
as
begin
	insert into categoria (descricao_cat) values (@descricaocat);

	insert into autor (nome_aut, dtnascimento_aut) values (@nomeaut, @dtnascimentoaut);

	insert into livro
				(isbn_id_liv, titulo_liv, resumo_liv, codigo_id_for, codigo_id_ed, dtpublicacao_liv, vlcusto_liv, vlvenda_liv)
	values (@isbnidliv, @tituloliv, @resumoliv, @codigoidfor, @codigoided, @dtpublicacaoliv, @vlcustoliv, @vlvendaliv)
end;

execute p_ins_livro_completo '8533613374', 'A Mansão Hollow', 'Detetive Poirot', 1, 2, '2000-06-26', 36, 67, 'Suspense', 'Agatha Christie', '15-07-1890';

select * from livro where isbn_id_liv = '8533613374';    
select * from categoria where descricao_cat = 'Suspense';    
select * from autor where nome_aut = 'Agatha Christie';   

-- Criar uma procedure – p_ins_carrrinho_item – Para inserir registro na tabela CARRINHO e tabela ITEM_CARRINHO, 
-- calculando o valor total do item do carrinho, após pesquisa na tabela LIVRO.

select * from carrinho;
select * from item_carrinho;
select * from cliente;

SET IDENTITY_INSERT carrinho ON;

create procedure p_ins_livro_completo 
@numeroidcar int,
@loginidcli varchar(10),
@enderecoentregacar varchar(60), 
@complementoentregacar varchar(15),
@bairroentregacar varchar(20), 
@cidadeentregacar varchar(30), 
@ufidest char(2), 
@codigoidpag int, 
@codigoidfun int,
@isbnidliv char(15),
@qtdadeitem int,
@situacaoitem char(1)
as
begin

	declare @datapedidocar date = cast(getdate() as date);
	declare @dataentregacar date = cast(getdate() + 5 as date);
	declare @vlvendaliv numeric(10,2)
	declare @vltotalitem numeric(10,2)
	
	insert into carrinho (numero_id_car, login_id_cli, data_pedido_car, data_entrega_car, endereco_entrega_car, complemento_entrega_car,
								bairro_entrega_car, cidade_entrega_car, uf_id_est, codigo_id_pag, codigo_id_fun)
	values (@numeroidcar, @loginidcli, @datapedidocar, @dataentregacar, @enderecoentregacar, @complementoentregacar,
								@bairroentregacar, @cidadeentregacar, @ufidest, @codigoidpag, @codigoidfun)

	select @vlvendaliv = vlvenda_liv from livro where isbn_id_liv = @isbnidliv

	select @vltotalitem = @vlvendaliv * @qtdadeitem

	insert into item_carrinho (isbn_id_liv, numero_id_car, qtdade_item, vltotal_item, situacao_item)
		values (@isbnidliv, @numeroidcar, @qtdadeitem, @vltotalitem, @situacaoitem);
end;

drop procedure p_ins_livro_completo

execute p_ins_livro_completo 1, 'lais', 'Rua', 'Apto', 'Bairro', 'SP', 'SP', 1, 1, '8533613374', 2, 'D';