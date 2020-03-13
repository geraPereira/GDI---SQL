CREATE OR REPLACE TYPE tp_nt_fones AS TABLE OF VARCHAR2(15);
/
CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
	cep VARCHAR2(10);
	numero NUMBER;
)FINAL;
/
CREATE OR REPLACE TYPE tp_imobiliaria AS OBJECT(
	nome VARCHAR2(50),
	cnpj VARCHAR2(20),
	telefones tp_nt_fones
)FINAL;
/
CREATE OR REPLACE TYPE tp_banco AS OBJECT(
	nome VARCHAR2(50),
	cnpj VARCHAR2(20),
	telefones tp_nt_fones
)FINAL;
/
CREATE OR REPLACE TYPE tp_cliente AS OBJECT(
	cadastro NUMBER,
	nome VARCHAR2(50),
	telefones tp_nt_fones,
	ref_banco REF tp_banco
)FINAL;
/
CREATE OR REPLACE TYPE tp_pessoa_juridica under tp_cliente(
	cnpj VARCHAR2(20)
)FINAL;
/
CREATE OR REPLACE TYPE tp_pessoa_fisica under tp_cliente(
	cpf VARCHAR2(20)
)FINAL;
/
CREATE OR REPLACE TYPE tp_financiamento AS OBJECT(
	codigo NUMBER;
	tempo NUMBER;
	juros NUMBER;
	ref_banco REF tp_pessoa_juridica
)FINAL;
/
CREATE OR REPLACE TYPE tp_corretor AS OBJECT(
	codigo NUMBER,
	nome VARCHAR2(50),
	comissao NUMBER,
	corretor_creci VARCHAR2(20),
	data_corretor DATE,
	telefones tp_nt_fones,
	ref_gerente REF tp_corretor,
	ref_cliente REF tp_cliente
)FINAL;
/
CREATE OR REPLACE TYPE tp_imovel AS OBJECT(
	codigo NUMBER,
	area NUMBER,
	descricao VARCHAR2(20),
	valor NUMBER,
	endereco tp_endereco,
	corretor tp_corretor,
	cliente tp_cliente,
	ref_corretor REF tp_corretor
)FINAL;
/
CREATE OR REPLACE TYPE tp_bonificacao AS OBJECT(
	codigo NUMBER,
	valor NUMBER,
	horas_extras NUMBER,
	descricao VARCHAR2(20)
)FINAL;
/
CREATE OR REPLACE TYPE tp_credencia AS OBJECT(
	ref_cliente REF tp_cliente,
	ref_banco REF tp_banco
)FINAL;
/
CREATE OR REPLACE TYPE tp_cadastra AS OBJECT(
	ref_imobiliaria REF tp_imobiliaria,
	ref_imobiliaria REF tp_imobiliaria
)FINAL;
/
CREATE OR REPLACE TYPE tp_anuncia AS OBJECT(
	ref_imovel REF tp_imovel,
	ref_cliente REF tp_cliente,
	ref_imobiliaria REF tp_imobiliaria
)FINAL;
/
CREATE OR REPLACE TYPE tp_cti AS OBJECT(
	ref_bonus REF tp_bonificacao,
	ref_corretor REF tp_corretor,
	ref_imobiliaria REF tp_imobiliaria
)FINAL;
/