# Criando Schema
CREATE SCHEMA `navios` ;

# Preparando Banco de Dados
CREATE TABLE `navios`.`tb_inspecao` (
  `nome_navio` VARCHAR(50) NULL,
  `mes_ano` VARCHAR(10) NULL,
  `classificacao_risco` VARCHAR(15) NULL,
  `indice_conformidade` VARCHAR(15) NULL,
  `pontuacao_risco` INT NULL,
  `temporada` VARCHAR(200) NULL);
  
# Importar Dados