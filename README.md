CONTEXTO -->
  Esse repositório trata-se de um desafio estatudantil do curso Analise de Dados com Power BI ofertado pela empresa Suzano em parceria com a plataforma DIO.
  Nesse desafio foi porposto a modelagem, mapeamento dos dados e implemnetação do banco de dados para o cenário de oficina.
  Nesse projeto foi utilizado o MySQL Workbench para todo o processo e muitas horas quebrando a cabeça (risos). E ah, os dados persisitidos são fictícios e gerados através do Meta IA.


Etapas do processo de criação e implementacao do BD ou, caso prefira,  storytelling do projeto -->

Etapas:
1 - Avaliar e melhorar o esquema conceitual para o mesmo cenário de oficina criado anteriormente (inclusive armazenado em repositorio aqui no GIT).
2 - Adicionar constraints para assegurar a integridade dos dados.
3 - Criar scripts para criação do banco de dados e suas tabelas.
4 - Persistir os respectivos dados no banco de dados.
5 - Recuperar dados com as querys seguindo algumas regras porposta pela DIO.

Bônus ::::::-> Criar insights respondendo uma possível pergunta de negócio.



-- Após encher a caneca com café, iniciei as atividades.

1: Avaliação e melhoria do esquema conceitual anterior:
===> Durante a avaliação do esquma anterior para cenário de oficina notei algumas necessidades de melhoria para resalvar a integridade dos dados,           inclusive, retirando algumas entidades. As entidades EXECUÇÃO_DO_SERVIÇO e PECAS foram excluidas e a entidade MECANICO foi transformada em atibutos     na tabela EQUIPE_MECANICA, conforme pode constatar nos arquivos .png 1 e 2.



2: Adicionar constraints:
===> Objetivo agora era melhorar a integridade de dados adicionando as constrints que julgasse necessárias além de referenciar as foreign key. 
     Iniciei organizando os scripts das sete tabelas, conforme pode ver no no exemplo do arquivo na imagem 4.
     Note também a diferença do atibuto CPF da tabela CLIENTE (na imagem 4) para o mesmo atributo na imagem 5, além de referenciar as FKs
     O script dessa etapa é o arquivo 6 deste repositório.


     
3: Scripts e a criação do banco de dados:
===> No arquivo 7 (.png), pode ser verificado o inicio da criação das tabelas, assim como outro exemplo no arquivo 8 pode ser notado a criação da            última tabela CARRO_FAZ_SERVICO. No total foram sete tabelas.


4: Persistindo dados:
===> Essa etapa talvez tenha sido a mais complexa, após a criação das subquerys que serão mencionadas pisteriormente. Embora, a ideia era persistir          aproximadamente 10 linhas para a maioria das tabelas, essa etapa requeriu muito tempo para criar os dados e eu já estava sem tanta criatividade         criatividade a essa altura então contei com ajuda de IA para gerar esses dados. Vide essa estapa nos arquivos 10,  11 além do próprio script de         criação que é o arquivo 12.


5: Recuperando dados:
===> Persistir as dez linhas de dados talvez tenha sido a etapa mais comnplexa, já a ação executada que mostra no aquivo 12 foi a mais satisfatória.         Teste de query. Esse foi o SELECT * FROM CLIENTE mais empolgante até a dta de hoje (risos).
     Nos arquivos 14 e 15 podem ser notados querys seguindo regras e sugestões realizadas pelo curso DIO, assim também como pode ser vistas nas imagens seguintes, porém estes arquivos (16 e 17) têm insights simples e interessantes sobre o cenário de oficina. 




Assim entrtego meu projeto, não buscando somente entregar conhecimento técnico sobre banco de dados ou querys, como também um pensamento estruturado, capacidade de gerar insights e contar histórias através dos dados e processos.
Embora, em algumas etapas desse proejto enfrentei dificuldades, mas tenho a convicção que dominarei os fundamentos e ferramentas adequadas para ser um profissional  analista de dados e desenvolvedor back end (Python) ao mesmo tempo...logo dominarei banco de dados também.



Meus agradecimentos à Suzano e DIO por uma das inúmeras oportunidades que estou tendo atualmente.

Vocês já contam com aminha reciprocidade eterna.

