USE OFICINA_DIO;
SELECT *
FROM CLIENTE;

-- Conforme banco de dados quantos carros cada cliente tem?

SELECT 
  C.IdCliente, 
  CONCAT(Primeiro_Nome," ",Sobrenome) Cliente,
  COUNT(CA.IdCarro) AS Quantidade_Carros
FROM 
  CLIENTE C
  LEFT JOIN CARRO CA ON C.IdCliente = CA.IdCliente
GROUP BY 
  C.IdCliente;
  
  --
  SHOW TABLES;
  SELECT *
  FROM EQUIPE_MECANICA;
  
  
  SELECT 
  TRIM(S.Categoria_Servico),
  ROUND(SUM(S.Preco_Servico),2)  Arrecadacao_Por_Servico,
  (SELECT ROUND(SUM(S.Preco_Servico), 2)
   FROM SERVICO S
   JOIN ORDEM_SERVICO O ON S.ORDEM_SERVICO_IdOrdem = O.IdOrdem
   WHERE O.Status IN ('Concluido', 'Iniciado')) AS Valor_Total,
  ROUND((SUM(S.Preco_Servico) / 
         (SELECT SUM(S.Preco_Servico)
          FROM SERVICO S
          JOIN ORDEM_SERVICO O ON S.ORDEM_SERVICO_IdOrdem = O.IdOrdem
          WHERE O.Status IN ('Concluido', 'Iniciado'))) * 100, 2) AS Percentual
FROM 
  ORDEM_SERVICO O
  JOIN SERVICO S ON O.IdOrdem = S.ORDEM_SERVICO_IdOrdem
WHERE 
  O.Status IN ('Concluido', 'Iniciado')
GROUP BY 
  TRIM(S.Categoria_Servico)
ORDER BY 
  Arrecadacao_Por_Servico DESC;
    -- Os dados indicam que o servico de REVISAO DE CARRO é o que mais arrecada entre CONSERTO DE CARROe TROCA DE PECAS;
    -- O servico de REVISAO DE CARRO arrecada 54,29% (1.054 reai) do valor total arrecadado pela oficina;
    -- A REVISAO DE CARROS arrecada mais (8,57% a mais) que o segundo e teceiro colocados em arrecadacao juntos.
    
    -- Considerendo as euipes que tem ordem servicos, a equipe de REVISAO DE CARROS Turbo Motors é com menos funcionario e que mais arrecada;
    -- A equipe de ESTETICA não obteve ordem de servico emitida.
    
    -- Minha sugestao seria uma analise sobre a equipe de ESTETICA para melhoria dos processos ou remanejamento de possiveis gastos ou investimentos para equipe de REVISAO.
    