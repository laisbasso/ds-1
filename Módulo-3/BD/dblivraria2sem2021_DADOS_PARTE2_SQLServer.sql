USE DBLIVRARIA2SEM2021;


-- LIVRO---
INSERT INTO LIVRO 
VALUES 
('8533613377',
'O SENHOR DOS ANÉIS I - A SOCIEDADE DO ANEL', 
'Em uma terra fantástica e única, um hobbit recebe de presente de seu tio um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal',
1,
13,
'2000/02/03',
25.00,
44.00);


INSERT INTO LIVRO 
VALUES 
('9788582714225',
 'BIOLOGIA MOLECULAR DA CÉLULA - 6ª ED. 2017',
 'De modo mais específico, a Biologia Molecular busca compreender os mecanismos de replicação, transcrição e tradução do material genético,',
1,
14,
'2017/01/01',
200.00,
342.90);



INSERT INTO LIVRO 
VALUES('9788580572186', 
'CINQUENTA TONS DE CINZA',
'A estudante de literatura Anastasia Steele, de 21 anos, entrevista o jovem bilionário Christian Grey, como um favor a sua colega de quarto Kate Kavanagh.',
 1,
 1,
 '2011/06/20',
 11.00, 29.90);


INSERT INTO LIVRO
VALUES (
'9788562409882', 
'A GAROTA DO LAGO',
'uma pequena cidade entre montanhas, é esse tipo de lugar, bucólico e com encantadoras casas dispostas à beira de um longo trecho de água intocada.',
3,
15,
'2017/01/04',
8.00,
11.90);


INSERT INTO LIVRO 
VALUES (
'9788593156755',
'A ORAÇÃO DE SÃO FRANCISCO',
'É a chamada Oração de São Francisco de Assis, um pequeno texto cheio de boas ideias.',
4,
11,
'2018/11/01',
30.00,
34.90);


INSERT INTO LIVRO
VALUES
(9788504019742,
'O RETORNO DE SHERLOCK HOLMES',
'Ressuscitou Sherlock Holmes, após contar sua morte na cena famosa em que desaparece nas cataratas de Reichenbach...',
1,
5,
'2015/03/25',
29.99,
39.90);

INSERT INTO LIVRO
 VALUES 
 ('9788569514732', 
 'ESTRELAS ALÉM DO TEMPO ',
 'No auge da corrida espacial travada entre Estados Unidos e Rússia durante a Guerra Fria, uma equipe de cientistas da NASA...',
 1,
 16,
 '2017/01/16'
 ,22.90,
 23.30);


INSERT INTO LIVRO 
VALUES 
('9788575426234',
'JOGANDO PARA VENCER ',
'coleção esportiva de lições de liderança organizados pelo então treinador da seleção brasileira masculina de vôlei Bernardinho...',
3,
3,
'2011/01/20',
29.90,
19.99);



INSERT INTO LIVRO
 VALUES 
 ('9788555390494', 
 'AS MELHORES HISTÓRIAS DE VIAGEM NO TEMPO',
 '...dezoito contos de alguns dos gigantes do universo sci-fi, abrangendo cinco década...',
  2,
 20,
 '2016/09/14',
 54.90,
 36.90);
 
 
 
INSERT INTO LIVRO 
VALUES 
('9788593911224',
 'E SE EU FOSSE PURA',
 'Amara mostra a vida por trás dos panos da profissão mais malfalada do mundo, mostrando as angústias, os medos, os preconceitos...',
3,
10,
'2016/02/05',
20.90,
39.39);

 
 
INSERT INTO LIVRO
VALUES (
'9788576831303',
'DIARIO DE UM BANANA',
'um garoto da sexta série que não tem muitos amigos, não é muito popular...',
1,
22,
'2007/04/01',
22.90,
30.90);

INSERT INTO LIVRO
VALUES (
'9788533613393',
'SENHOR DOS ANÉIS: O RETORNO DO REI',
'O confronto final entre as forças do bem e do mal que lutam pelo controle do futuro da Terra Média se aproxima.',
3,
10,
'1955/07/29',
60.45,
90.80);


INSERT INTO LIVRO
VALUES 
('9788553611218',
'CLT – CONSOLIDAÇÃO DAS LEIS DO TRABALHO',
'A CLT surgiu pelo Decreto-Lei nº 5.452, de 1 de maio de 1943, sancionada pelo então presidente Getúlio Vargas',
4,
20,
'2019/03/21',
110.00,
220.00
);

INSERT INTO LIVRO
VALUES (
'9788576849209',
'REGRAS DO JOGO',
'Mateus é um garoto pobre, afrodescendente, abandonado pelo pai ver- dadeiro e rejeitado pelo pai adotivo... ',
4,
21,
'2015/08/08',
20.50,
40.90
);





INSERT INTO AUTOR (nome_aut) VALUES ('JOSE XXXXXXX');
INSERT INTO AUTOR (nome_aut) VALUES ('MARIA XXXXXXX');
INSERT INTO AUTOR (nome_aut) VALUES ('ANTONIO XXXXXXX');
INSERT INTO AUTOR (nome_aut) VALUES ('CARLOS XXXXXXX');
INSERT INTO AUTOR (nome_aut) VALUES ('VILMA XXXXXXX');
INSERT INTO AUTOR (nome_aut) VALUES ('ANA XXXXXXX');




-- LIVRO_AUTOR --
INSERT INTO LIVRO_AUTOR VALUES ('9788504019742', 1);
INSERT INTO LIVRO_AUTOR VALUES ('9788562409882', 1);
INSERT INTO LIVRO_AUTOR VALUES ('9788562409882', 3);
INSERT INTO LIVRO_AUTOR VALUES ('9788593156755', 2);
INSERT INTO LIVRO_AUTOR VALUES ('9788555390494', 5);
INSERT INTO LIVRO_AUTOR VALUES ('9788555390494', 6);
INSERT INTO LIVRO_AUTOR VALUES ('9788504019742', 6);
INSERT INTO LIVRO_AUTOR VALUES ('9788582714225', 5);
INSERT INTO LIVRO_AUTOR VALUES ('9788504019742', 4);
INSERT INTO LIVRO_AUTOR VALUES ('9788553611218', 3);
INSERT INTO LIVRO_AUTOR VALUES ('9788576831303', 4);
INSERT INTO LIVRO_AUTOR VALUES ('9788576831303', 2);
INSERT INTO LIVRO_AUTOR VALUES ('9788593911224', 1);
INSERT INTO LIVRO_AUTOR VALUES ('9788569514732', 6);



-- LIVRO_CATEGORIA
INSERT INTO LIVRO_CATEGORIA VALUES ('9788504019742', 24);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788562409882', 1);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788562409882', 3);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788593156755', 9);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788555390494', 10);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788555390494', 11);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788504019742', 23);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788582714225', 5);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788504019742', 16);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788553611218', 9);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788576831303', 10);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788576831303', 11);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788593911224', 21);
INSERT INTO LIVRO_CATEGORIA VALUES ('9788569514732', 21);

