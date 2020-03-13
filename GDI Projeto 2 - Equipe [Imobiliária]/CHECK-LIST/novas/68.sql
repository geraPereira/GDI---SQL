CREATE OR REPLACE FUNCTION atualiza RETURN NUMBER IS retorno NUMBER;
BEGIN
	SELECT MAX(comissao) INTO retorno FROM corretor
	RETURN retorno;
END atualiza