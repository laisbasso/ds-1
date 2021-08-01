use dbProjeto2sem2021;


/* AREA */
Insert into  area (nome_are) values  ('Desenvolimento de Sistemas');
Insert into  area (nome_are) values  ('Análise e Projetos Ágil');
Insert into  area (nome_are) values  ('Desenvolvimento de Aplicativos Móveis');
Insert into  area (nome_are) values  ('Inovação e Tecnologia');
Insert into  area (nome_are) values  ('Design e Prototipação');

/* CARGO */
Insert into  cargo (nome_car, vlhoras_car) values  ('Analista de Sistemas', 35);
Insert into  cargo (nome_car, vlhoras_car) values  ('Desenvolvedor de Software', 30);
Insert into  cargo (nome_car, vlhoras_car) values  ('Analista de Qualidade',25);
Insert into  cargo (nome_car, vlhoras_car) values  ('Administrador Banco de Dados',45);
Insert into  cargo (nome_car, vlhoras_car) values  ('Arquiteto de Software',50);
Insert into  cargo (nome_car, vlhoras_car) values  ('Analista de Infraestrutura',40);

/* CLIENTE */
Insert into  cliente (nome_cli, cnpj_cli) values  ('Empresa J&X', '46382432000105');
Insert into  cliente (nome_cli, cnpj_cli)values   ('Loja XXXXX', '73518482000140');
Insert into  cliente (nome_cli, cnpj_cli)values   ('Empresa YYYYY', '77114945000169');
Insert into  cliente (nome_cli, cnpj_cli)values   ('Loja XYZ', '77963293000137');
Insert into  cliente (nome_cli, cnpj_cli)values   ('Empresa ABCD ', '38301009000105');

/* CLIENTE-EMAIL */
Insert into cliente_email values (1, 'empresajx@teste.com.br');
Insert into cliente_email values (1, 'empresajx2@teste.com.br');
Insert into cliente_email values (2, 'lojaxxxxx@teste.com.br');
Insert into cliente_email values (3, 'empresayyyyyy@teste.com.br');
Insert into cliente_email values (5, 'lojaxyz@teste.com.br');
Insert into cliente_email values (5, 'empresaabcd@teste.com.br');

/* ESTADO */
Insert into estado values ('AC', 'Acre');
Insert into estado values ('AL', 'Alagoas');
Insert into estado values ('AP','Amapá');
Insert into estado values ('AM','Amazonas');
Insert into estado values ('BA','Bahia');
Insert into estado values ('CE','Ceará');
Insert into estado values ('DF','Distrito Federal');
Insert into estado values ('ES','Espírito Santo')
Insert into estado values ('GO', 'Goiás');
Insert into estado values ('MA','Maranhão');
Insert into estado values ('MT','Mato Grosso');
Insert into estado values ('MS','Mato Grosso do Sul');
Insert into estado values ('MG','Minas Gerais');
Insert into estado values ('PA','Pará');
Insert into estado values ('PB','Paraíba');
Insert into estado values ('PR','Paraná');
Insert into estado values ('PE','Pernambuco');
Insert into estado values ('PI','Piauí');
Insert into estado values ('RJ','Rio de Janeiro');
Insert into estado values ('RN','Rio Grande do Norte');
Insert into estado values ('RS','Rio Grande do Sul');
Insert into estado values ('RO','Rondônia');
Insert into estado values ('RR','Roraima');
Insert into estado values ('SC','Santa Catarina');
Insert into estado values ('SP','São Paulo');
Insert into estado values ('SE','Sergipe');
Insert into estado values ('TO','Tocantins');

/*CLIENTE-ENDERECO*/
Insert into cliente_endereco (codigo_id_cli, logradouro_end, numero_end, bairro_end, cidade_end,  cep_end, sigla_id_est)
values (1, 'Rua Xv de Novembro', 50, 'Vila Nova','São Paulo', '13400000','SP');
Insert into cliente_endereco  (codigo_id_cli, logradouro_end, numero_end, bairro_end, cidade_end,  cep_end, sigla_id_est)
values (2, 'Av 7 de setembro' ,110, 'Vila Cruz','São Paulo', '13800000','SP');
Insert into cliente_endereco  (codigo_id_cli, logradouro_end, numero_end, bairro_end, cidade_end,  cep_end, sigla_id_est)
values (4, 'Rua das Flores', 10, 'Jd Maria','São Paulo', '13600000','SP');
Insert into cliente_endereco  (codigo_id_cli, logradouro_end, numero_end, bairro_end, cidade_end,  cep_end, sigla_id_est)
values (4, 'Av Nova', 67, 'Centro','São Paulo', '13400000','SP');
Insert into cliente_endereco  (codigo_id_cli, logradouro_end, numero_end, bairro_end, cidade_end,  cep_end, sigla_id_est)
values (5, 'Rua das Amoras',10 , 'Vila Flora','Poços de Caldas', '03400000','MG');

/*CLIENTE-TELEFONE*/
Insert into cliente_telefone (codigo_id_cli, ddd_tel, numero_tel)
values (1,'11','999999978');
Insert into cliente_telefone (codigo_id_cli, ddd_tel, numero_tel)
values(2,'11','999996368');
Insert into cliente_telefone (codigo_id_cli, ddd_tel, numero_tel)
values (3,'11','999995978');
Insert into cliente_telefone (codigo_id_cli, ddd_tel, numero_tel)
values (3,'11','223999921');
Insert into cliente_telefone (codigo_id_cli, ddd_tel, numero_tel)
values (3,'11','356649908');
Insert into cliente_telefone (codigo_id_cli, ddd_tel, numero_tel)
values (4,'11','999999978');
Insert into cliente_telefone (codigo_id_cli, ddd_tel, numero_tel)
values (5,'11','999999978');

/*FUNCIONARIO*/
Insert into funcionario (nome_fun, codigo_id_car) values  ('Pedro', 1);
Insert into funcionario (nome_fun, codigo_id_car) values ('Ana', 2);
Insert into funcionario (nome_fun, codigo_id_car)values ('Carlos', 3);
Insert into funcionario (nome_fun, codigo_id_car)values ('Alfredo', 4);
Insert into funcionario (nome_fun, codigo_id_car)values ('Jose Carlos', 1);
Insert into funcionario (nome_fun, codigo_id_car)values ('Valter', 2);
Insert into funcionario (nome_fun, codigo_id_car)values ('Cecília', 5);
Insert into funcionario (nome_fun, codigo_id_car)values ('Valdir', 4);
Insert into funcionario (nome_fun, codigo_id_car)values ('Maria', 3);
Insert into funcionario (nome_fun, codigo_id_car)values ('Aparecida', 4);



/*PROJETO*/
insert into projeto (nome_pro, descricao_pro, codigo_id_cli, codigo_id_are, dtinicio_pro, dtfim_pro, tothoraestimada_pro)
values ('PROJETO SISTEMA ESPORTE','sistema de esportes', 3, 4, '2021/04/10', '2021/11/30', 50000);
insert into projeto (nome_pro, descricao_pro, codigo_id_cli, codigo_id_are, dtinicio_pro, dtfim_pro, tothoraestimada_pro)
values ('PROJETO SISESCOLA','sistema para escola', 3, 4, '2021/06/10', '2021/11/30', 300000);
insert into projeto (nome_pro, descricao_pro, codigo_id_cli, codigo_id_are, dtinicio_pro, dtfim_pro, tothoraestimada_pro)
values ('PROJETO SISSAUDE', 'sistema para saude',3, 4, '2021/05/10', '2022/07/30', 1500000);
insert into projeto (nome_pro, descricao_pro, codigo_id_cli, codigo_id_are, dtinicio_pro, dtfim_pro, tothoraestimada_pro)
values ('PROJETO SISOBRAS','sistema de obras',3, 4, '2021/03/10', '2021/06/30', 200000);
insert into projeto (nome_pro, descricao_pro, codigo_id_cli, codigo_id_are, dtinicio_pro, dtfim_pro, tothoraestimada_pro)
values ('PROJETO SISJURIDICO', 'sistema jurídico',3, 4, '2020-09-10', '2021-04-30', 1500000);



/*PROJETO_FUNCIONARIO*/
insert into projeto_funcionario values (1, 5, 200, 200);
insert into projeto_funcionario values (1, 3, 200, 200);
insert into projeto_funcionario values (1, 2, 200, 200);
insert into projeto_funcionario values (2, 1, 200, 200);
insert into projeto_funcionario values (2, 4, 200, 210);
insert into projeto_funcionario values (2, 5, 200, 200);
insert into projeto_funcionario values (2, 8, 200, 220);
insert into projeto_funcionario values (3, 9, 200, 200);
insert into projeto_funcionario values (3, 2, 200, 200);
insert into projeto_funcionario values (3, 6, 200, 200);
insert into projeto_funcionario values (4, 10, 200, 200);
insert into projeto_funcionario values (4, 7, 200, 200);
insert into projeto_funcionario values (5, 10, 200, 200);
insert into projeto_funcionario values (5, 3, 200, 200);

