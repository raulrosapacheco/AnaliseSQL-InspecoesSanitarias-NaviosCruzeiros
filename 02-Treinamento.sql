# CONSULTANDO TODA TABELA
SELECT * FROM navios.tb_inspecao;

# CONSULTANDO COLUNAS ESPECÍFICAS
SELECT nome_navio, pontuacao_risco FROM navios.tb_inspecao;

# CONSULTANDO VALORES DISTINTOS DA COLUNA INDICADA 
SELECT DISTINCT classificacao_risco FROM navios.tb_inspecao;

# FILTRANDO DADOS POR CLASSIFICAÇÃO DE RISCO
SELECT nome_navio, classificacao_risco 
FROM navios.tb_inspecao
WHERE classificacao_risco = 'A';

# ORDENAR DADOS
SELECT nome_navio, classificacao_risco, pontuacao_risco 
FROM navios.tb_inspecao
WHERE classificacao_risco = 'A'
ORDER BY pontuacao_risco;

# AND
SELECT nome_navio, classificacao_risco, pontuacao_risco 
FROM navios.tb_inspecao
WHERE classificacao_risco = 'A' AND pontuacao_risco > 50
ORDER BY pontuacao_risco;

# OR
SELECT nome_navio, classificacao_risco, pontuacao_risco 
FROM navios.tb_inspecao
WHERE classificacao_risco = 'A' OR pontuacao_risco < 200
ORDER BY pontuacao_risco;

# IN
SELECT nome_navio, classificacao_risco, pontuacao_risco 
FROM navios.tb_inspecao
WHERE classificacao_risco IN ('C','D') AND pontuacao_risco > 350
ORDER BY pontuacao_risco;

# LIMIT: LIMITAR NÚMERO DE LINHAS PARA CONSULTA
SELECT nome_navio, classificacao_risco, pontuacao_risco 
FROM navios.tb_inspecao
WHERE classificacao_risco IN ('C','D') AND pontuacao_risco > 350
ORDER BY pontuacao_risco
LIMIT 5;
