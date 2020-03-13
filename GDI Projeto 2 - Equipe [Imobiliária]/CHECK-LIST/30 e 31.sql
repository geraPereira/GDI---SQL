-- QUESTAO 30 Lista os corretores cujo as comissoes sao maiores do que a comissao de pelosmenos um
SELECT nome,corretor_creci
FROM corretor
WHERE comissao >
SOME (SELECT comissao FROM corretor)

-- QUESTAO 31 Lista os corretores cujo as comissoes sao maiores do que a comissao de cada corretor
SELECT nome,corretor_creci
FROM corretor
WHERE comissao >
ALL (SELECT AVG(comissao) FROM corretor)
