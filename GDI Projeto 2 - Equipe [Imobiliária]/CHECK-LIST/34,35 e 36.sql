-- 34 mostra a junção de todos os clientes com os que sao clientes pessoa fisica
(SELECT cliente_cadastro FROM pessoa_juridica)
UNION (SELECT cliente_cadastro FROM pessoa_fisica)
--35 mostra somente os clientes que sao pessoa fisica
(SELECT cadastro FROM cliente)
INTERSECT (SELECT cliente_cadastro FROM pessoa_fisica)
--36 mostra os clientes que sao nulos, retorno nulo
(SELECT cadastro FROM cliente)
MINUS (SELECT cliente_cadastro FROM pessoa_fisica)
