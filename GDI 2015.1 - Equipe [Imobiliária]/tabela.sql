DROP TABLE cti_bonificacao;
DROP TABLE cti;
DROP TABLE anuncia;
DROP TABLE cadastra;
DROP TABLE credencia;
DROP TABLE bonificacao;
DROP TABLE imovel;
DROP TABLE corretor_fone;
DROP TABLE corretor;
DROP TABLE cliente_fone;
DROP TABLE pessoa_juridica;
DROP TABLE pessoa_fisica;
DROP TABLE cliente;
DROP TABLE financiamento;
DROP TABLE banco_fones;
DROP TABLE banco;
DROP TABLE imobiliaria_fones;
DROP TABLE imobiliaria;

CREATE TABLE imobiliaria (
	cnpj_imobiliaria VARCHAR2(20)NOT NULL,
	nome_imobiliaria VARCHAR2(50),
	endereco_cep VARCHAR2(10),
	endereco_numero NUMBER,
	CONSTRAINT imobiliaria_pk PRIMARY KEY (cnpj_imobiliaria)
);

CREATE TABLE imobiliaria_fones(
	imobiliaria_cnpj VARCHAR2(20)NOT NULL,
	imobiliaria_fone VARCHAR2(15),
	CONSTRAINT imobiliaria_fones_pk PRIMARY KEY (imobiliaria_cnpj),
	CONSTRAINT imobiliaria_fones_fk FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria)
);
	
CREATE TABLE banco (
	cnpj_banco VARCHAR2(20)NOT NULL,
	nome_banco VARCHAR2(25),
	CONSTRAINT banco_pk PRIMARY KEY(cnpj_banco)
);

CREATE TABLE banco_fones (
	banco_cnpj VARCHAR2(20)NOT NULL,
	banco_fone VARCHAR2(15),
	CONSTRAINT banco_fones_pk PRIMARY KEY(banco_cnpj),
	CONSTRAINT banco_fones_fk FOREIGN KEY (banco_cnpj) REFERENCES banco(cnpj_banco)
);

CREATE TABLE financiamento (
	codigo_financiamento NUMBER NOT NULL,
	cnpj_banco VARCHAR2(20)NOT NULL,
	tempo NUMBER, 
	juros NUMBER,
	CONSTRAINT financiamento_pk PRIMARY KEY (codigo_financiamento,cnpj_banco),
	CONSTRAINT financiamento_fk FOREIGN KEY (cnpj_banco) REFERENCES banco(cnpj_banco)
);

CREATE TABLE cliente (
	cadastro NUMBER NOT NULL,
	nome VARCHAR2(50),
	cnpj_banco VARCHAR2(20)NOT NULL,
	CONSTRAINT cliente_pk PRIMARY KEY (cadastro),
	CONSTRAINT cliente_fk FOREIGN KEY (cnpj_banco) REFERENCES banco(cnpj_banco)
);

CREATE TABLE pessoa_fisica (
	cpf VARCHAR2(16)NOT NULL,
	cliente_cadastro NUMBER NOT NULL,
	CONSTRAINT pessoa_fisica_pk PRIMARY KEY (cpf),
	CONSTRAINT pessoa_fisica_fk FOREIGN KEY (cliente_cadastro) REFERENCES cliente (cadastro)
);
 
CREATE TABLE pessoa_juridica (
	cnpj VARCHAR2 (20) NOT NULL,
	cliente_cadastro NUMBER NOT NULL,
	CONSTRAINT pessoa_juridica_pk PRIMARY KEY (cnpj),
	CONSTRAINT pessoa_juridica_fk FOREIGN KEY (cliente_cadastro) REFERENCES cliente (cadastro)
);

CREATE TABLE cliente_fone (
	cliente_fone VARCHAR2(15),
	cliente_cadastro NUMBER NOT NULL,
	CONSTRAINT cliente_fone_pk PRIMARY KEY (cliente_cadastro),
	CONSTRAINT cliente_fone_fk FOREIGN KEY(cliente_cadastro)REFERENCES cliente(cadastro)
);

CREATE TABLE corretor(
	nome VARCHAR2(30),
	comissao NUMBER,
	corretor_creci VARCHAR2(20) NOT NULL,
	gerente_creci VARCHAR2(20) NOT NULL,
	cliente_cadastro NUMBER NOT NULL,
	data_corretor DATE,
	CONSTRAINT corretor_pk PRIMARY KEY (corretor_creci),
	CONSTRAINT corretor_fk FOREIGN KEY(cliente_cadastro)REFERENCES cliente(cadastro)
);

CREATE TABLE corretor_fone(
	corretor_fone VARCHAR2(15) NOT NULL,
	corretor_creci_fone VARCHAR2(20) NOT NULL,
	CONSTRAINT corretor_creci_fone_pk PRIMARY KEY (corretor_creci_fone),
	CONSTRAINT corretor_fone_fk FOREIGN KEY(corretor_creci_fone)REFERENCES corretor(corretor_creci)
);

CREATE TABLE imovel (
	codigo NUMBER NOT NULL,
	area NUMBER,
	descricao VARCHAR2(20),
	cep VARCHAR2(20),
	numero NUMBER,
	valor NUMBER,
	creci_corretor_imovel VARCHAR2(20) NOT NULL,
	CONSTRAINT imovel_pk PRIMARY KEY (codigo),
	CONSTRAINT imovel_fk FOREIGN KEY (creci_corretor_imovel) REFERENCES corretor(corretor_creci)
);

CREATE TABLE bonificacao (
	codigo NUMBER NOT NULL,
	valor NUMBER,
	descricao VARCHAR2(20),
	CONSTRAINT bonificacao_pk PRIMARY KEY (codigo)
);

CREATE TABLE credencia (
	imobiliaria_cnpj VARCHAR2(20)NOT NULL,
	banco_cnpj VARCHAR2(20)NOT NULL,
	CONSTRAINT credencia_pk PRIMARY KEY (imobiliaria_cnpj,banco_cnpj),
	CONSTRAINT credencia_fk FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria),
	CONSTRAINT credencia_fk2 FOREIGN KEY (banco_cnpj) REFERENCES banco(cnpj_banco)
);

CREATE TABLE cadastra (
	cliente_cadastro NUMBER NOT NULL,
	imobiliaria_cnpj VARCHAR2(20)NOT NULL,
	CONSTRAINT cadastra_pk PRIMARY KEY (cliente_cadastro,imobiliaria_cnpj),
	CONSTRAINT cadastra_fk FOREIGN KEY (cliente_cadastro) REFERENCES cliente(cadastro),
	CONSTRAINT cadastra_fk2 FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria)
);

CREATE TABLE anuncia (
	codigo_imovel NUMBER NOT NULL,
	cliente_cadastro NUMBER NOT NULL,
	imobiliaria_cnpj VARCHAR2(20) NOT NULL,
	CONSTRAINT anuncia_pk PRIMARY KEY (cliente_cadastro,codigo_imovel),
	CONSTRAINT anuncia_fk FOREIGN KEY (codigo_imovel) REFERENCES imovel(codigo),
	CONSTRAINT anuncia_fk2 FOREIGN KEY (cliente_cadastro) REFERENCES cliente(cadastro),
	CONSTRAINT anuncia_fk3 FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria)
);

CREATE TABLE cti (
	imobiliaria_cnpj VARCHAR2(20)NOT NULL,
	corretor_creci_cti VARCHAR2(20) NOT NULL,
	codigo_bonus_cti NUMBER NOT NULL,
	CONSTRAINT cti_pk PRIMARY KEY (corretor_creci_cti,imobiliaria_cnpj),
	CONSTRAINT cti_fk FOREIGN KEY (imobiliaria_cnpj) REFERENCES imobiliaria(cnpj_imobiliaria),
	CONSTRAINT cti_fk2 FOREIGN KEY (corretor_creci_cti) REFERENCES corretor(corretor_creci),
	CONSTRAINT cti_fk3 FOREIGN KEY (codigo_bonus_cti) REFERENCES bonificacao(codigo)
);

CREATE TABLE cti_bonificacao (
	horas_extras NUMBER,
	codigo_bonus NUMBER NOT NULL,
	CONSTRAINT cti_bonus_pk PRIMARY KEY (codigo_bonus),
	CONSTRAINT cti_bonus_fk FOREIGN KEY (codigo_bonus) REFERENCES bonificacao(codigo)
);