--padroniza a comissao dos corretores em 1500
CREATE OR REPLACE FUNCTION atualiza(
p_Outnovacomissao OUT NUMBER)
RETURN NUMBER IS retorno NUMBER;
BEGIN
	p_Outnovacomissao:=1500*1,1
	RETURN p_Outnovacomissao;
END atualiza