-- 37 insere na tabela cliente cpf e telefone 
INSERT INTO cliente(nome)
SELECT nome_banco
FROM banco
WHERE cnpj_banco = '00.000.000/0001-91'

-- 38 atualiza a comissao dos corretores com a maior comissao
UPDATE corretor SET comissao
=(SELECT comissao FROM corretor WHERE comissao < 1500)
--39 deleta a tabela corretor com a maior comissao
DELETE FROM corretor_fone
WHERE corretor_creci_fone = ANY (SELECT corretor_creci FROM corretor WHERE comissao < 1500 )
--40 conceder a permissao de consulta a tabela corretor a gerente_creci
GRANT SELECT ON corretor TO system
--41 retirando permissao
REVOKE SELECT ON corretor TO system