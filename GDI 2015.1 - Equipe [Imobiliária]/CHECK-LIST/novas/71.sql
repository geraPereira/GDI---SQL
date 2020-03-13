--aumenta a comissao dos corretores em 10% aparti da maior comissao
CREATE OR REPLACE FUNCTION atualiza(
p_innovacomissao corretor.comissao%TYPE
p_Outnovacomissao OUT NUMBER)
RETURN NUMBER IS retorno NUMBER;
BEGIN
	SELECT MAX(comissao) INTO retorno FROM corretor
	p_Outnovacomissao:=retorno*1,1
	RETURN p_Outnovacomissao;
END atualiza