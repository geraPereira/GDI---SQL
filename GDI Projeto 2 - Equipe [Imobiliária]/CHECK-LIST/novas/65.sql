--padroniza a comissao de todos os corretores com 1500
CREATE OR REPLACE PROCEDURE novacomissao(
p_Outnovacomissao OUT NUMBER)
)IS 

BEGIN 
p_Outnovacomissao:=1500
END novacomissao;
/