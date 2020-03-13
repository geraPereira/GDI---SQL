-- 74
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER novocorretor
AFTER INSERT ON corretor
FOR EACH ROW
BEGIN 	
	IF :NEW.nome IS NOT NULL THEN 
	INSERT corretor SET creci:= NEW.creci
	WHERE data_corretor := NEW.data_corretor;
END;
/

