 --inserindo imobiliaria
INSERT INTO imobiliaria (cnpj_imobiliaria,nome_imobiliaria,endereco_cep,endereco_numero) VALUES ('11.379.476/0001-00','queiroz galvao','51020350',128);
INSERT INTO imobiliaria (cnpj_imobiliaria,nome_imobiliaria,endereco_cep,endereco_numero) VALUES ('11.535.028/0001-40','imobiliaria recife','51011490',306);
INSERT INTO imobiliaria (cnpj_imobiliaria,nome_imobiliaria,endereco_cep,endereco_numero) VALUES ('04.032.281/0001-15','cti imobiliaria','50721110',122);
INSERT INTO imobiliaria (cnpj_imobiliaria,nome_imobiliaria,endereco_cep,endereco_numero) VALUES ('00.325.797/0001-78','mg imobiliaria','52020220', 1356);

--inserindo telefones das imobiliarias
INSERT INTO imobiliaria_fones(imobiliaria_cnpj,imobiliaria_fone) VALUES ('11.379.476/0001-00','(81)3464-1900');
INSERT INTO imobiliaria_fones(imobiliaria_cnpj,imobiliaria_fone) VALUES ('11.535.028/0001-40','(81)3464-1935');
INSERT INTO imobiliaria_fones(imobiliaria_cnpj,imobiliaria_fone) VALUES ('04.032.281/0001-15','(81)3445-5000');
INSERT INTO imobiliaria_fones(imobiliaria_cnpj,imobiliaria_fone) VALUES ('00.325.797/0001-78','(81)3048-5915');


--inserindo bancos
INSERT INTO banco(cnpj_banco,nome_banco) VALUES ('00.000.000/0001-91','BANCO DO BRASIL SA');
INSERT INTO banco(cnpj_banco,nome_banco) VALUES ('00.360.305/0001-04','CAIXA ECONOMICA FEDERAL');
INSERT INTO banco(cnpj_banco,nome_banco) VALUES ('61.186.680/0001-74','BANCO BMG SA');
INSERT INTO banco(cnpj_banco,nome_banco) VALUES ('60.746.948/0001-12',' BANCO BRADESCO SA');
INSERT INTO banco(cnpj_banco,nome_banco) VALUES ('90.400.888/0001-42','BANCO SANTANDER');

--isso tem que virar atributo da tabela banco!
INSERT INTO banco_fones(banco_cnpj,banco_fone) VALUES ('00.000.000/0001-91','(61) 3102-2068');
INSERT INTO banco_fones(banco_cnpj,banco_fone) VALUES ('00.360.305/0001-04','(61) 3206-6670');
INSERT INTO banco_fones(banco_cnpj,banco_fone) VALUES ('61.186.680/0001-74','(31) 3290-3449');
INSERT INTO banco_fones(banco_cnpj,banco_fone) VALUES ('60.746.948/0001-12','(11) 3684-2696');
INSERT INTO banco_fones(banco_cnpj,banco_fone) VALUES ('90.400.888/0001-42','(11) 4004-3535');

--inserindo financiamentos
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (1,'00.000.000/0001-91', 18, 5);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (2,'00.000.000/0001-91', 6, 3);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (3,'00.000.000/0001-91', 12, 4);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (4,'00.000.000/0001-91', 24, 11);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (5,'00.000.000/0001-91', 36, 15);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (10,'00.360.305/0001-04', 6, 2);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (12,'00.360.305/0001-04', 18, 5);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (13,'61.186.680/0001-74', 16, 4);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (14,'61.186.680/0001-74', 19, 6);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (15,'60.746.948/0001-12', 20, 8);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (16,'90.400.888/0001-42', 23, 10);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (17,'90.400.888/0001-42', 26, 12);
INSERT INTO financiamento(codigo_financiamento,cnpj_banco,tempo,juros) VALUES (18,'90.400.888/0001-42', 6, 3);

--inserindo Clientes
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (1,'Lojao do Tonhao','00.000.000/0001-91');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (2,'Renato e Campos Empreendimentos','00.000.000/0001-91');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (3,'Testes Reparos','00.000.000/0001-91');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (4,'Guido','00.360.305/0001-04');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (5,'Shopping Otimo Preco','00.360.305/0001-04');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (6,'Colegio DDI','61.186.680/0001-74');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (7,'Manga Biscoitos','61.186.680/0001-74');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (8,'Thomas Baldo','60.746.948/0001-12');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (9,'Pedro Paulo','90.400.888/0001-42');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (10,'Paulo Tenorio','90.400.888/0001-42');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (11,'Jacinto Plino','00.000.000/0001-91');
INSERT INTO cliente(cadastro,nome,cnpj_banco) VALUES (12,'Maria Marta','00.000.000/0001-91');

--inserindo CPFs
INSERT INTO pessoa_fisica(cpf,cliente_cadastro) VALUES ('513.382.643-54', 8);
INSERT INTO pessoa_fisica(cpf,cliente_cadastro) VALUES ('313.345.643-34', 9);
INSERT INTO pessoa_fisica(cpf,cliente_cadastro) VALUES ('563.382.623-54', 10);
INSERT INTO pessoa_fisica(cpf,cliente_cadastro) VALUES ('513.382.643-53', 11);

--inserindo CNPJs
INSERT INTO pessoa_juridica(cnpj,cliente_cadastro) VALUES ('036.221.555/0001-37', 1);
INSERT INTO pessoa_juridica(cnpj,cliente_cadastro) VALUES ('091.001.294/0012-87', 2);
INSERT INTO pessoa_juridica(cnpj,cliente_cadastro) VALUES ('019.028.929/0029-92', 3);
INSERT INTO pessoa_juridica(cnpj,cliente_cadastro) VALUES ('084.289.028/0019-12', 4);
INSERT INTO pessoa_juridica(cnpj,cliente_cadastro) VALUES ('298.029.019/0015-10', 5);
INSERT INTO pessoa_juridica(cnpj,cliente_cadastro) VALUES ('294.289.052/0023-45', 6);
INSERT INTO pessoa_juridica(cnpj,cliente_cadastro) VALUES ('192.100.168/0026-14',7);


--inserindo Telefones dos Clientes
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3429-0012',1);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3541-5322',2);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3113-2342',3);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3435-3532',4);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3442-1265',5);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3532-1254',6);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3152-1252',7);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3044-0000',1);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3229-3311',1);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3421-1016',2);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3229-0002',3);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3432-1425',4);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3444-1221',5);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)7421-1623',4);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)9491-1833',6);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3491-3221',7);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3726-2243',8);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)3425-6234',9);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)4421-3313',10);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)8421-5464',11);
INSERT INTO cliente_fone(cliente_fone,cliente_cadastro) VALUES ('(81)8597-9845',12);


--inserindo corretores
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Mauricio Barros',2000,'PE-4894','PE-4894', 1);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Manuel Nascimento',1800,'PE-4491','PE-4894', 2);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Carlos Listo',1340,'J-4187','PE-4894', 3);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Antônio Silva',1200,'CE-09834','CE-09834', 4);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('João Sobral',1000,'PE-1294','CE-09834', 5);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Lucas Nascimento',1700,'PE-1576','CE-09834', 6);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Pedro Novas',1900,'PE-1765', 'PE-1765',7);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Bruno Donad',1500,'J-5748','PE-1765', 8);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Helder Camargo',1600,'CE-8458','PE-1765', 9);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Fernando Oliveira',1300,'PE-8462','PE-8462', 10);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Lucas Felix',1100,'PE-1265','PE-8462', 11);
INSERT INTO corretor (nome,comissao,corretor_creci,gerente_creci,cliente_cadastro) VALUES ('Geraldo Tupim',1070,'PE-2354','PE-8462', 12);


--inserindo telefones dos corretores -
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)3493-2182','PE-4894');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)3222-3312','PE-4491');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)3235-1235','J-4187');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)9988-4582','CE-09834');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)9877-6678','PE-1294');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)9284-2982','PE-1576');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)4321-2142','PE-1765');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)3251-2415','J-5748');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)2516-1257','CE-8458');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)8522-1572','PE-8462');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)8827-1416','PE-1265');
INSERT INTO corretor_fone(corretor_fone,corretor_creci_fone) VALUES ('(81)9647-5216','PE-2354');

--inserindo imoveis
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (1, 30,'Ap', '50010-300', 956, 50000, 'PE-4894');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (2, 700,'Sítio', '89010-600', 153, 500000, 'PE-4491');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (3, 120,'Casa', '40012-900', 2059, 210000, 'J-4187');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (4, 600,'Sítio', '70510-600', 569, 600000, 'CE-09834');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (5, 300,'Chacara', '52610-700', 9863, 350000, 'PE-1294');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (6, 100,'Casa', '88910-600', 5217, 180000, 'PE-1576');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (7, 60,'Ap', '93610-600', 2569, 75000, 'PE-1765');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (8, 90,'Casa', '98410-556', 3021, 99000, 'J-5748');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (9, 3000,'Fazenda', '56238-985', 547, 1500000, 'CE-8458');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (10, 55,'Ap', '23014-695', 687, 70000, 'PE-8462');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (11, 110,'Casa', '58964-988', 206, 200000, 'PE-1265');
INSERT INTO imovel(codigo,area,descricao,cep,numero,valor,creci_corretor_imovel) VALUES (12, 140,'Casa', '52937-193', 245,  58000, 'PE-2354');

--inserindo bonificaçoes
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (1, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (2, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (3, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (4, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (5, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (6, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (7, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (8, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (9, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (10, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (11, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (12, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (13, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (14, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (15, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (16, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (17, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (18, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (19, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (20, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (21, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (22, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (23, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (24, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (25, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (26, 1000, 'Bonus');
INSERT INTO bonificacao(codigo,valor,descricao) VALUES (27, 1000, 'Bonus');

--inserindo credencia
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.379.476/0001-00', '00.000.000/0001-91');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.379.476/0001-00', '00.360.305/0001-04');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.379.476/0001-00', '61.186.680/0001-74');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.379.476/0001-00', '60.746.948/0001-12');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.379.476/0001-00', '90.400.888/0001-42');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.535.028/0001-40', '00.000.000/0001-91');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.535.028/0001-40', '00.360.305/0001-04');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.535.028/0001-40', '61.186.680/0001-74');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.535.028/0001-40', '60.746.948/0001-12');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('11.535.028/0001-40', '90.400.888/0001-42');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('04.032.281/0001-15', '00.000.000/0001-91');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('04.032.281/0001-15', '00.360.305/0001-04');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('04.032.281/0001-15', '61.186.680/0001-74');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('04.032.281/0001-15', '60.746.948/0001-12');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('04.032.281/0001-15', '90.400.888/0001-42');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('00.325.797/0001-78', '00.000.000/0001-91');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('00.325.797/0001-78', '00.360.305/0001-04');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('00.325.797/0001-78', '61.186.680/0001-74');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('00.325.797/0001-78', '60.746.948/0001-12');
INSERT INTO credencia(imobiliaria_cnpj,banco_cnpj) VALUES ('00.325.797/0001-78', '90.400.888/0001-42');

--inserindo cadastra
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (1, '11.379.476/0001-00');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (2, '11.379.476/0001-00');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (3, '11.379.476/0001-00');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (4, '11.535.028/0001-40');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (5, '11.535.028/0001-40');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (6, '11.535.028/0001-40');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (7, '04.032.281/0001-15');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (8, '04.032.281/0001-15');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (9, '04.032.281/0001-15');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (10, '00.325.797/0001-78');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (11, '00.325.797/0001-78');
INSERT INTO cadastra(cliente_cadastro,imobiliaria_cnpj)VALUES (12, '00.325.797/0001-78');

--inserindo anuncia
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)
VALUES (1, 1, '11.379.476/0001-00');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (2, 2, '11.379.476/0001-00');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (3, 3, '11.379.476/0001-00');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (4, 4, '11.535.028/0001-40');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (5, 5, '11.535.028/0001-40');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (6, 6, '11.535.028/0001-40');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (7, 7, '04.032.281/0001-15');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (8, 8, '04.032.281/0001-15');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (9, 9, '04.032.281/0001-15');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (10,10, '00.325.797/0001-78');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (11, 11, '00.325.797/0001-78');
INSERT INTO anuncia(codigo_imovel,cliente_cadastro,imobiliaria_cnpj)VALUES (12, 12, '00.325.797/0001-78');

--inserindo cti
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('11.379.476/0001-00', 'PE-4894', 1);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('11.379.476/0001-00', 'PE-4491', 2);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('11.379.476/0001-00', 'J-4187', 3);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('11.535.028/0001-40', 'CE-09834', 4);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('11.535.028/0001-40', 'PE-1294', 5);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('11.535.028/0001-40', 'PE-1576', 6);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('04.032.281/0001-15', 'PE-1765', 7);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('04.032.281/0001-15', 'J-5748', 8);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('04.032.281/0001-15', 'CE-8458', 9);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('00.325.797/0001-78', 'PE-8462', 10);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('00.325.797/0001-78', 'PE-1265', 11);
INSERT INTO cti(imobiliaria_cnpj,corretor_creci_cti,codigo_bonus_cti)VALUES ('00.325.797/0001-78', 'PE-2354', 12);

--inserindo cti bonificacao
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (2, 1);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (2, 2);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (2, 3);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (3, 4);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (3, 5);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (3, 6);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 7);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 8);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 9);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 10);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 11);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 12);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 13);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 14);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 15);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (4, 16);
INSERT INTO cti_bonificacao(horas_extras,codigo_bonus) VALUES (2, 17);