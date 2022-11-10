# Algum navio teve indice de conformidade 100%, pontuação de risco 0 em novembro de 2016?
SELECT nome_navio, indice_conformidade, pontuacao_risco, mes_ano
FROM navios.tb_inspecao
WHERE indice_conformidade >= '100'
AND pontuacao_risco = 0
AND mes_ano = '11/2016';

SELECT nome_navio, indice_conformidade, pontuacao_risco, mes_ano
FROM navios.tb_inspecao
WHERE indice_conformidade IN (SELECT indice_conformidade
								FROM navios.tb_inspecao
								WHERE indice_conformidade >= 100)
AND pontuacao_risco = 0
AND mes_ano = '11/2016';

# Quais embarcações possuem pontuação de risco igual a 310? 
SELECT nome_navio, pontuacao_risco 
FROM navios.tb_inspecao
WHERE pontuacao_risco = 310;

# Quais embarcações têm classificação de risco A e índice de conformidade maior ou igual a 95%? 
SELECT nome_navio, classificacao_risco, indice_conformidade
FROM navios.tb_inspecao
WHERE classificacao_risco = 'A'
AND indice_conformidade >= 95
ORDER BY indice_conformidade;
 
# Quais embarcações têm classificação de risco C ou D e índice de conformidade menor ou igual a 95%? 
SELECT nome_navio, classificacao_risco, indice_conformidade
FROM navios.tb_inspecao
WHERE classificacao_risco IN ('C','D') 
AND indice_conformidade <= 95
ORDER BY indice_conformidade;

# Quais embarcações têm classificação de risco A ou pontuação de risco igual a 0? 
SELECT nome_navio, classificacao_risco, pontuacao_risco
FROM navios.tb_inspecao
WHERE classificacao_risco = 'A' OR pontuacao_risco = 0;

# Quais embarcações foram inspecionadas em Dezembro de 2016?
SELECT nome_navio, temporada
FROM navios.tb_inspecao
WHERE temporada LIKE '%Dezembro 2016%';
