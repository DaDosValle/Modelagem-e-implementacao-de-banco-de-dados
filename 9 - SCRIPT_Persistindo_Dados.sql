SHOW DATABASES;
USE OFICINA_DIO;
SHOW TABLES;
DESC CLIENTE;


SELECT * FROM CLIENTE;
INSERT INTO CLIENTE(Primeiro_Nome, Sobrenome, CPF, Telefone_DDD, Telefone, Email, Endereco_Rua, Endereco_Numero, Endereco_Bairro, Endereco_Cidade, Endereco_Estado)
    VALUES('Kato', 'Makabe', '98765432109', '71', '912345678', 'kato.makabe@speedmail.com.br', 'Rua das Laranjeiras', 923, 'Flores', 'Salvador', 'Bahia'),
		  ('Luana', 'Mercia', '15545678901', '73', '987654321', 'luana.m@fastmail.com', 'Rua do Comércio', 456, 'Centro', 'Salvador', 'Bahia'),
          ('Carlos','Oliveira', '87456789012', '71', '901234567', 'arlos.oliveira@proemail.com', 'Paulista', 789, 'Bela Vista', 'Salvador', 'Bahia'),
          ('Beatriz', 'Souza', '34567890123', 73, 923456789, 'beatriz.souza@easyemail.com', 'G1', 47, 'Meados', 'Lauro de Freitas', 'Bahia'),
          ('Pedro','Santos', '45678901234', '75', '934567890', 'pedro.santos@directmail.com', 'Josealdo Raposo', 103, 'Cia 1', 'Simoes Filho', 'Bahia'),
          ('Beatriz', 'Paolino', '23456789012', '71', '935678901', 'bia.pao@securemail.com', 'Rua do Imperador', 02, 'Gleba', 'Camacari', 'Bahia'),
          ('Camila', 'Soares', '05014188860', '71', '991770403', 'camila.sjs@rica.com', 'Palestina', 02,'Palestina', 'Salvador','Bahia'),
          ('Marcelo', 'Ribeiro', '56789012345', 11, 946789012, 'marcelo.ribeiro@fastmail.com', 'Rua dos Artistas', 05, 'Bairro', 'Lauro de Freitas', 'Bahia'),
          ('Gabriel', 'Gonçalves', '78901234567', '71', '968901234', 'gabriel.goncalves@easyemail.com', 'Rua 2', 10, 'Conolacao', 'Salvador', 'Bahia'),
          ('Isadora', 'do Valle', '89012345678', '71', '979012345', 'isadora.martins@directmail.com', 'Rua das Laranjeiras', 45, 'Flores','Salvador','Bahia');
         

SELECT * FROM EQUIPE_MECANICA;
INSERT INTO EQUIPE_MECANICA(
			Nome_Equipe, Quantidade_Membros, Especialidade)
		VALUES('Pintura e Estetica', 5, 'Estetica'),
			  ('Turbo Motors', 7, 'Revisão'),
              ('Speed Team', 8, 'Troca de pecas'),
              ('The Force', '14', 'Conserto');
              
SELECT * FROM ORDEM_SERVICO;
DESC ORDEM_SERVICO;
INSERT INTO ORDEM_SERVICO(Data_Inicio, Previsao_Entrega, Status, EQUIPE_MECANICA_IdEquipe)
		VALUES('2025-04-28', NULL, 'Pendente', 1),
			  ('2025-01-30', '2025-02-10', 'Concluido', 2),
			  ('2025-02-07', '2025-02-14', 'Concluido', 2),
			  ('2024-12-13', '2024-12-13', 'Concluido', 4),
			  ('2025-04-30', '2025-05-07', 'Iniciado', 1),
			  ('2025-05-28', '2025-06-08', 'Iniciado', 4),
			  ('2025-06-03', '2025-06-04', 'Iniciado', 2),
			  ('2025-06-02', '2025-06-09', 'Iniciado', 2),
			  ('2025-05-02', '2025-05-06', 'Iniciado', 2),
			  ('2025-05-02', NULL, 'Pendente', 3),
			  ('2025-01-30', '2025-01-30', 'Concluido', 4),
			  ('2025-04-18', '2025-04-30', 'Concluido', 3);

SELECT * FROM CARRO;
DESC CARRO;
INSERT INTO CARRO(
			  Marca, Modelo, Cor, Ano, Placa, IdCliente, ORDEM_SERVICO_IdOrdem, ORDEM_SERVICO_EQUIPE_MECANICA_IdEquipe)
	VALUE('Gol', 'Volkswagen', 'Preto', '2010-02-02', 'ABC1234', 5, 14, 1),
	('Volkswagen', 'Gol', 'Prata', '2020-01-15', 'AAA1234', 1, 19, 4),
	('Toyota', 'Corolla', 'Vermelho', '2019-06-20', 'DEF5678', 2, 24, 2),
	('Honda', 'Civic', 'Azul', '2021-03-10', 'GHI9012', 3, 15, 2),
	('Ford', 'Focus', 'Cinza', '2018-09-05', 'JKL3456', 4, 13, 4),
	('Chevrolet', 'Onix', 'Branco', '2017-11-25', 'MNO7890', 5, 20, 1),
	('Nissan', 'Sentra', 'Preto', '2016-02-12', 'PQR2345', 6, 16, 3),
	('Volkswagen', 'Polo', 'Prata', '2020-08-18', 'STU6789', 7, 17, 2),
	('Honda', 'Fit', 'Vermelho', '2022-04-02', 'VWX1234', 8, 18, 2),
	('Chevrolet', 'Cruze', 'Branco', '2015-05-22', 'YZA5678', 9, 22, 2),
	('Toyota', 'Etios', 'Cinza', '2019-01-08', 'BCD9012', 10, 21, 1);

SELECT * FROM CARRO_FAZ_SERVICO;
INSERT INTO CARRO_FAZ_SERVICO(CARRO_IdCarro, SERVICO_IdServico, SERVICO_ORDEM_Servico_IdOrdem)
	VALUES(45, 34, 14),
	(45, 35, 15),
	(46, 37, 19),
	(46, 40, 20),
	(46, 43, 22),
	(47, 38, 24),
	(48, 35, 15),
	(48, 41, 17),
	(49, 36, 13),
	(50, 40, 20),
	(50, 42, 18),
	(50, 44, 21),
	(51, 39, 16),
	(52, 41, 17),
	(52, 43, 22),
	(53, 42, 18),
	(54, 43, 22),
	(55, 44, 21),
	(55, 34, 14);


SELECT * FROM FUNCIONARIO;
INSERT INTO FUNCIONARIO(IdFuncionario, Primeiro_Nome, Sobrenome, Cargo, Data_Contratacao, EQUIPE_MECANICA_IdEquipe)
	Values(1, 'João', 'Silva', 'Pintor', '2020-01-01', 1),
	(2, 'Maria', 'Santos', 'Mecânico', '2019-06-01', 2),
	(3, 'Pedro', 'Oliveira', 'Técnico', '2021-03-01', 3),
	(4, 'Ana', 'Souza', 'Consertador', '2018-09-01', 4),
	(5, 'Carlos', 'Gomes', 'Pintor', '2020-02-01', 1),
	(6, 'Beatriz', 'Moreira', 'Mecânico', '2019-08-01', 2),
	(7, 'Luiz', 'Henrique', 'Técnico', '2021-05-01', 3),
	(8, 'Gabriela', 'Ferreira', 'Consertador', '2018-11-01', 4),
	(9, 'Rafael', 'Pereira', 'Pintor', '2020-04-01', 1),
	(10, 'Isabela', 'Rodrigues', 'Mecânico', '2019-10-01', 2),
	(11, 'Felipe', 'Alves', 'Técnico', '2021-07-01', 3),
	(12, 'Juliana', 'Martins', 'Consertador', '2018-12-01', 4),
	(13, 'Gustavo', 'Barbosa', 'Pintor', '2020-06-01', 1),
	(14, 'Leticia', 'Lima', 'Mecânico', '2019-12-01', 2),
	(15, 'Mateus', 'Nunes', 'Técnico', '2021-08-01', 3),
	(16, 'Larissa', 'Ribeiro', 'Consertador', '2019-01-01', 4),
	(17, 'Thiago', 'Mendes', 'Pintor', '2020-07-01', 1),
	(18, 'Aline', 'Cardoso', 'Mecânico', '2020-03-01', 2),
	(19, 'Vinicius', 'Moreira', 'Técnico', '2021-09-01', 3),
	(20, 'Beatriz', 'Lopes', 'Consertador', '2019-02-01', 4),
	(21, 'Leonardo', 'Santos', 'Pintor', '2020-08-01', 1),
	(22, 'Isadora', 'Oliveira', 'Mecânico', '2020-04-15', 2),
	(23, 'Guilherme', 'Ferreira', 'Técnico', '2021-10-01', 3),
	(24, 'Luana', 'Martins', 'Consertador', '2019-03-01', 4),
	(25, 'Eduardo', 'Pereira', 'Pintor', '2020-09-01', 1),
	(26, 'Juliana', 'Gomes', 'Mecânico', '2020-05-01', 2),
	(27, 'Felipe', 'Lima', 'Técnico', '2021-11-01', 3),
	(28, 'Amanda', 'Nunes', 'Consertador', '2019-04-01', 4),
	(29, 'Pedro', 'Moreira', 'Pintor', '2020-10-01', 1),
	(30, 'Luisa', 'Santos', 'Mecânico', '2020-06-01', 2),
	(31, 'Gustavo', 'Cardoso', 'Técnico', '2021-12-01', 3),
	(32, 'Beatriz', 'Ferreira', 'Consertador', '2019-05-01', 4),
	(33, 'Mateus', 'Oliveira', 'Pintor', '2020-11-01', 1),
	(34, 'Isabela', 'Martins', 'Mecânico', '2020-07-01', 2);


SELECT * FROM SERVICO;
INSERT INTO SERVICO(
	Categoria_Servico, Peca, Nome_Servico, Preco_Servico, Duracao_Horas, ORDEM_SERVICO_IdOrdem, EQUIPE_MECANICA_IdEquipe)
    VALUES('Revisao', 'Filtro de óleo', 'Revisão de motor', 300, 2, 14, 2),
	('Conserto', 'Pastilha de freio', 'Conserto de freios', 150, 1, 15, 3),
	('Troca', 'Bateria', 'Troca de bateria', 540.52, 1, 13, 1),
	('Revisao', 'Filtro de ar', 'Revisão de sistema de ar', 652, 1, 19, 2),
	('Conserto', 'Correia dentada', 'Conserto de correia dentada', 214.20, 3, 24, 4),
	('Troca', 'Lâmpada de farol', 'Troca de lâmpada de farol', 180, 1, 16, 1),
	('Revisao', 'Óleo de motor', 'Revisão de óleo de motor', 102, 11, 20, 2),
	('Conserto', 'Sistema de direção', 'Conserto de sistema de direção', 145.40, 4, 17, 3),
	('Troca', 'Pneu', 'Troca de pneu', 98, 2, 18, 4),
	('Revisao', 'Sistema de freios', 'Revisão de sistema de freios', 102.80, 2, 22, 2),
	('Conserto', 'Sistema de suspensao', 'Conserto de suspensao', 100, 3, 21, 3);