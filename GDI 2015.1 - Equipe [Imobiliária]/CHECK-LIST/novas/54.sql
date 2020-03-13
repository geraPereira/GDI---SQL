--procedimento
CREATE OR REPLACE PROCEDURE areaTam IS 
CURSOR imovel_c IS
SELECT * FROM imovel;
imovel_v imovel_c%ROWTYPE;
BEGIN
	OPEN imovel_c;
	WHILE imovel_v.area != NULL
	LOOP 
	FETCH imovel_c INTO imovel_v;
	IF imovel_v.area < 50 THEN
		DBMS_OUTPUT.PUT_LINE('O imovel e pequeno');
	ELSIF imovel_v.area < 200 THEN 
		DBMS_OUTPUT.PUT_LINE('O imovel tem tamanho medio');
	ELSE
		DBMS_OUTPUT.PUT_LINE('O imovel e grande');
	END IF;
	END LOOP;
	CLOSE imovel_c;
END;
/