--aumenta a comissao em 10%
CREATE OR REPLACE FUNCTION atualiza(
p_innovacomissao corretor.comissao%TYPE )
RETURN NUMBER IS retorno NUMBER;
BEGIN
	retorno:=p_innovacomissao*1,1
	RETURN retorno;
END atualiza