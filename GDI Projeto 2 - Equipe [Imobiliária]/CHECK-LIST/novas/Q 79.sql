SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER novocorretor
AFTER DELETE ON corretor
FOR EACH ROW
BEGIN 	
	IF :OLD.nome IS NOT NULL THEN 
	DELETE corretor SET creci:= OLD.creci
	WHERE data_corretor := OLD.data_corretor;
END;
/
