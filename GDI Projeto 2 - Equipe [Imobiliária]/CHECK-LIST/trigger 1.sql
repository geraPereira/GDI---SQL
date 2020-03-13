-- trigger
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER nImob
BEFORE INSERT OR DELETE ON imobiliaria
DECLARE 
	n NUMBER;
BEGIN 	
	SELECT COUNT(cnpj_imobiliaria) INTO n
	FROM imobiliaria ;
	DBMS_OUTPUT.PUT_LINE('Quantidade atual de imobilarias: ' || n);
END;
/
--teste
INSERT INTO imobiliaria (cnpj_imobiliaria,nome_imobiliaria,endereco_cep,endereco_numero) VALUES ('05.312.797/0001-24','imobiliaria do gera','53010300', 179);
DELETE FROM imobiliaria WHERE cnpj_imobiliaria = '05.312.797/0001-24';