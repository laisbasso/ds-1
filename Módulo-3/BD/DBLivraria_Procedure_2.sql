-- dupla: Lais Basso e Gustavo Gomes

use DBLivraria2sem2021;

-- Criar uma procedure – p_gravar_livro – com opção para incluir e alterar os registros na tabela LIVRO.

create procedure p_gravar_livro -- incluir ok, falta alterar (var opcional?)
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
	insert into livro
				(isbn_id_liv, titulo_liv, resumo_liv, codigo_id_for, codigo_id_ed, dtpublicacao_liv, vlcusto_liv, vlvenda_liv)
	values (@isbnidliv, @tituloliv, @resumoliv, @codigoidfor, @codigoided, @dtpublicacaoliv, @vlcustoliv, @vlvendaliv)
end;

select * from livro;

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
	insert into categoria (descricao_cat) value (@descricaocat);

	insert into autor (nome_aut, dtnascimento_aut) values (@nomeaut, @dtnascimentoaut);

	insert into livro
				(isbn_id_liv, titulo_liv, resumo_liv, codigo_id_for, codigo_id_ed, dtpublicacao_liv, vlcusto_liv, vlvenda_liv)
	values (@isbnidliv, @tituloliv, @resumoliv, @codigoidfor, @codigoided, @dtpublicacaoliv, @vlcustoliv, @vlvendaliv)
end;

-- Criar uma procedure – p_ins_carrrinho_item – Para inserir registro na tabela CARRINHO e tabela ITEM_CARRINHO, calculando o valor total do item do carrinho, após pesquisa na tabela LIVRO.

select * from carrinho;

create procedure p_ins_livro_completo 

@loginidcli varchar(10),
@datapedidocar datetime, 
@dataentregacar datetime, 
@enderecoentregacar varchar(60), 
@complementoentregacar varchar(15),
@bairroentregacar varchar(20), 
@cidadeentregacar varchar(30), 
@ufidest char(2), 
@codigoidpag int, 
@codigoidfun int
as
begin

insert into carrinho (login_id_cli, data_pedido_car, data_entrega_car, endereco_entrega_car, complemento_entrega_car,
							bairro_entrega_car, cidade_entrega_car, uf_id_est, codigo_id_pag, codigo_id_fun)
values (@loginidcli, @datapedidocar, @dataentregacar, @enderecoentregacar, @complementoentregacar,
							@bairroentregacar, @cidadeentregacar, @ufidest, @codigoidpag, @codigoidfun)
end;