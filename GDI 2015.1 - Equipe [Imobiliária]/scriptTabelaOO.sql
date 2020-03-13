DROP TABLE tb_cti_bonificacao;
DROP TABLE tb_cti;
DROP TABLE tb_anuncia;
DROP TABLE tb_cadastra;
DROP TABLE tb_credencia;
DROP TABLE tb_bonificacao;
DROP TABLE tb_imovel;
DROP TABLE tb_corretor_fone;
DROP TABLE tb_corretor;
DROP TABLE tb_cliente_fone;
DROP TABLE tb_pessoa_juridica;
DROP TABLE tb_pessoa_fisica;
DROP TABLE tb_cliente;
DROP TABLE tb_financiamento;
DROP TABLE tb_banco_fones;
DROP TABLE tb_banco;
DROP TABLE tb_imobiliaria_fones;
DROP TABLE tb_imobiliaria;

CREATE TABLE tb_imobiliaria OF tp_imobiliaria (
	cnpj_imobiliaria NOT NULL,
	PRIMARY KEY (cnpj_imobiliaria),
) NESTED TABLE telefones STORE AS tb_imobiliaria_fones;


CREATE TABLE tb_banco OF tp_banco (
	cnpj_banco NOT NULL,
	PRIMARY KEY(cnpj_banco)
)NESTED TABLE tp_nt_fones STORE AS tb_banco_fones ;

CREATE TABLE tb_financiamento OF tp_financiamento (
	codigo_financiamento NOT NULL,
	cnpj_banco NOT NULL,
	PRIMARY KEY (codigo_financiamento,cnpj_banco),
	CONSTRAINT financiamento_fk FOREIGN KEY (cnpj_banco) REFERENCES banco(cnpj_banco)
);

CREATE TABLE tb_cliente OF tp_cliente (
	cadastro NOT NULL,
	cnpj_banco NOT NULL,
	cliente_pk PRIMARY KEY (cadastro),
	CONSTRAINT cliente_fk FOREIGN KEY (cnpj_banco) REFERENCES banco(cnpj_banco)
);

CREATE TABLE tb_pessoa_fisica OF tp_pessoa_fisica (
	cpf NOT NULL,
	cliente_cadastro NOT NULL,
	PRIMARY KEY (cpf),
	CONSTRAINT pessoa_fisica_fk FOREIGN KEY (cliente_cadastro) REFERENCES cliente (cadastro)
)NESTED TABLE tp_nt_fones STORE AS tb_cliente_fone;
 
CREATE TABLE tb_pessoa_juridica OF tp_pessoa_juridica (
	cnpj NOT NULL,
	cliente_cadastro NOT NULL,
	PRIMARY KEY (cnpj),
	CONSTRAINT pessoa_juridica_fk FOREIGN KEY (cliente_cadastro) REFERENCES cliente (cadastro)
);

CREATE TABLE tb_corretor OF tp_corretor(
	corretor_creci NOT NULL,
	gerente_creci NOT NULL,
	cliente_cadastro NOT NULL,
	data_corretor,
	PRIMARY KEY (corretor_creci),
	CONSTRAINT corretor_fk FOREIGN KEY(cliente_cadastro)REFERENCES cliente(cadastro)
)NESTED TABLE tp_nt_fones STORE AS tb_corretor_fone;

CREATE TABLE tb_imovel OF tp_imovel (
	codigo NOT NULL,
	creci_corretor_imovel NOT NULL,
	PRIMARY KEY (codigo),
	CONSTRAINT imovel_fk FOREIGN KEY (creci_corretor_imovel) REFERENCES corretor(corretor_creci)
);

CREATE TABLE tb_bonificacao OF tp_bonificacao (
	codigo NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE tb_credencia OF tp_credencia (
	imobiliaria_cnpj NOT NULL,
	banco_cnpj NOT NULL,
	PRIMARY KEY (imobiliaria_cnpj,banco_cnpj),
	CONSTRAINT credencia_fk FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria),
	CONSTRAINT credencia_fk2 FOREIGN KEY (banco_cnpj) REFERENCES banco(cnpj_banco)
);

CREATE TABLE tb_cadastra OF tp_cadastra(
	cliente_cadastro NOT NULL,
	imobiliaria_cnpj NOT NULL,
	PRIMARY KEY (cliente_cadastro,imobiliaria_cnpj),
	CONSTRAINT cadastra_fk FOREIGN KEY (cliente_cadastro) REFERENCES cliente(cadastro),
	CONSTRAINT cadastra_fk2 FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria)
);

CREATE TABLE tb_anuncia OF tp_anuncia (
	codigo_imovel NOT NULL,
	cliente_cadastro NOT NULL,
	imobiliaria_cnpj NOT NULL,
	PRIMARY KEY (cliente_cadastro,codigo_imovel),
	CONSTRAINT anuncia_fk FOREIGN KEY (codigo_imovel) REFERENCES imovel(codigo),
	CONSTRAINT anuncia_fk2 FOREIGN KEY (cliente_cadastro) REFERENCES cliente(cadastro),
	CONSTRAINT anuncia_fk3 FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria)
);

CREATE TABLE tb_cti OF tp_cti (
	imobiliaria_cnpj NOT NULL,
	corretor_creci_ctiNOT NULL,
	codigo_bonus_cti NOT NULL,
	PRIMARY KEY (corretor_creci_cti,imobiliaria_cnpj),
	CONSTRAINT cti_fk FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria),
	CONSTRAINT cti_fk2 FOREIGN KEY (corretor_creci_cti) REFERENCES corretor(corretor_creci),
	CONSTRAINT cti_fk3 FOREIGN KEY (codigo_bonus_cti) REFERENCES bonificacao(codigo)
);

