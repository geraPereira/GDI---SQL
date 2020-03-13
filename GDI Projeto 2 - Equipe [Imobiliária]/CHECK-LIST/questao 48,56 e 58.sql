-- checklist 48 56 58
SET SERVEROUTPUT ON
DECLARE
	qtcliente NUMBER;
BEGIN
	SELECT COUNT(cadastro) INTO qtcliente
	FROM cliente;
	DBMS_OUTPUT.PUT_LINE('Quantidade :'||qtcliente);
END;
/

	