-- 74
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER nImob
AFTER INSERT OR DELETE ON imobiliaria
DECLARE 
	n NUMBER;
BEGIN 	
	SELECT COUNT(cnpj_imobiliaria) INTO n
	FROM imobiliaria ;
	DBMS_OUTPUT.PUT_LINE('Quantidade atual de imobilarias: ' || n);
END;
/

