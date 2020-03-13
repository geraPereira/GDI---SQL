-- QUESTAO 26 (clientes em comum com os bancos)
SELECT banco.nome_banco,cliente.nome 
FROM banco
INNER JOIN cliente
ON banco.cnpj_banco=cliente.cnpj_banco