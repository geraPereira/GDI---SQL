--aumenta a comissao dos corretores em 10%
CREATE OR REPLACE PROCEDURE novacomissao(
p_innovacomissao IN corretor.comissao%TYPE
p_Outnovacomissao OUT NUMBER)
)IS 
v_local NUMBER
BEGIN 
v_local:=p_innovacomissao*1,1
p_Outnovacomissao:=v_local
END novacomissao;
/