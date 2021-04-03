use db_livraria;

alter table livro add totpaginas_liv int not null;

alter table estado alter column descricao_uf varchar(30) not null;

alter table autor drop column dtnascimento_aut;

insert into formato_livro values
	('Capa dura'),
	('Capa comum');

insert into editora values
	('Casa dos Livros'),
	('Quadrinhos na Cia'),
	('Globo Livros');

insert into livro values
	('8520938221', 'A Mansão Hollow', 'Um inofensivo convite para almoçar na Mansão Hollow logo se transforma em mais um caso a ser desvendado por Hercule Poirot.', 1, 1, '15-07-2014', 18, 28.45, 256),
	('8535916164', 'Scott Pilgrim - Contra O Mundo', 'Scott Pilgrim está feliz com sua preciosa vidinha.', 2, 2, '16-04-2010', 20, 38.45, 368),
	('8525057010', 'E não sobrou nenhum', 'Uma ilha misteriosa, um poema infantil, dez soldadinhos de porcelana e muito suspense são os ingredientes com que Agatha Christie constrói seu romance mais importante.', 2, 3, '1-6-2014', 24.9, 35.3, 400);

insert into autor values
	('Agatha Christie'),
	('Bryan Lee O Malley');
	
insert into livro_autor values
	('8520938221', 1),
	('8535916164', 2),
	('8525057010', 1);
	
insert into categoria values
	('Mistério'),
	('Graphic Novels');
	
insert into livro_categoria values
	('8520938221', 1),
	('8535916164', 2),
	('8525057010', 1);

insert into estado values
	('SP', 'São Paulo');

insert into cliente values
	('lais_123', '123', 'lais', '12345678901', '11999999999', 'lais@email.com', 'Rua 123', 'Casa 123', 'Vila 123', 'São Paulo', 'SP', '0000000'),
	('laura_123', '123', 'laura', '98765432103', '11555555555', 'laura@email.com', 'Rua 123', 'Casa 123', 'Vila 123', 'São Paulo', 'SP', '0000000');

insert into pagamento values
	('débito'),
	('crédito');

insert into funcionario values
	('Luiza');

insert into carrinho values
	('lais_123', '26-03-2021', '27-03-2021', 'Rua 123', 'Casa 123', 'Vila 123', 'São Paulo', 'SP', 1, 1),
	('laura_123', '26-03-2021', '27-03-2021', 'Rua 123', 'Casa 123', 'Vila 123', 'São Paulo', 'SP', 2, 1);
	
insert into item_carrinho values
	('8520938221', 1, 1, 28.45, 1),
	('8525057010', 1, 1, 35.3, 1),
	('8520938221', 2, 1, 28.45, 1),
	('8535916164', 2, 1, 38.45, 1);

update editora set nome_ed = 'FTD' where codigo_id_ed = 13;

delete livro_categoria where codigo_id_cat = 26;
delete categoria where codigo_id_cat = 26;
