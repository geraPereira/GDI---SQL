SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER novocorretor
AFTER UPDATE ON corretor
FOR EACH ROW
BEGIN 	
	IF :NEW.nome IS NOT NULL THEN 
	UPDATE corretor SET nome:= OLD.nome
	WHERE data_corretor =: NEW.data_corretor;
END;
/