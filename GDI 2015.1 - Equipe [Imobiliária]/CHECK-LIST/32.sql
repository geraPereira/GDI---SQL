-- 32 Mostra o cnpj da imobiliaria que o corretor trabalha
SELECT nome,corretor_creci
FROM corretor WHERE EXISTS
(SELECT cti.imobiliaria_cnpj FROM cti WHERE corretor.corretor_creci=cti.corretor_creci_cti )