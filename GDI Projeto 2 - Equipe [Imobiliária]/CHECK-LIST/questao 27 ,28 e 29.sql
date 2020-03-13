-- questao 27(lista o nome do banco e cliente em comum)
SELECT cliente.nome,cliente.cadastro,banco.nome_banco
FROM cliente
LEFT OUTER JOIN banco
ON cliente.cnpj_banco = banco.cnpj_banco

-- questao 28(lista o nome do banco e cliente em comum)
SELECT cliente.nome,cliente.cadastro,banco.nome_banco
FROM cliente
RIGHT OUTER JOIN banco
ON cliente.cnpj_banco = banco.cnpj_banco

--questao 29
SELECT cliente.nome,cliente.cadastro,banco.nome_banco
FROM cliente
FULL OUTER JOIN banco
ON cliente.cnpj_banco = banco.cnpj_banco
