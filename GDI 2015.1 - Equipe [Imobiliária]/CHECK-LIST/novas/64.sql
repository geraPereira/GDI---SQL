CREATE OR REPLACE PROCEDURE InsereImobiliaria(
P_cnpj imobiliaria.cnpj_imobiliaria%TYPE,
p_nome imobiliaria.nome_imobiliaria%TYPE,
p_endereco imobiliaria.endereco_cep%TYPE, 
p_numero imobiliaria.endereco_numero%TYPE)AS
BEGIN 
--insere uma nova imobiliaria na tabela
INSERT INTO imobiliaria (cnpj_imobiliaria,nome_imobiliaria,endereco_cep,endereco_numero)
VALUES (P_cnpj,p_nome,p_endereco,p_numero);
COMMIT;
END InsereImobiliaria;
/