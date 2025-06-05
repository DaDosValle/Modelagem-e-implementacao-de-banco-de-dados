SHOW DATABASES;
USE OFICINA_DIO;
SHOW TABLES;
DESC CLIENTE;


SELECT * FROM CLIENTE;
INSERT INTO CLIENTE(Primeiro_Nome, Sobrenome, CPF, Telefone_DDD, Telefone, Email, Endereco_Rua, Enderedo_Numero, Endereco_Bairro, Endereco_Cidade, Enderecco_Estado)
    VALUES('Kato', 'Makabe', 98765432109, 71, 912345678, 'kato.makabe@speedmail.com.br', 'Rua das Laranjeiras', 923, 'Flores', 'Salvador', 'Bahia')
		  ('Luana', 'Mercia', 15545678901, 73, 987654321, 'luana.m@fastmail.com', 'Rua do Comércio', 456, 'Centro', 'Salvador', 'Bahia')
          ('Carlos','Oliveira', 87456789012, 71, 901234567, 'arlos.oliveira@proemail.com', 'Paulista', 789, 'Bela Vista', 'Salvador', 'BAhia')
          ("Beatriz', 'Souza", 34567890123, 73, 923456789, 'beatriz.souza@easyemail.com', 'G1', 47, 'Meados', 'Lauro de Freitas', 'Bahia')
          ('Pedro','Santos', 45678901234, 75, 934567890, 'pedro.santos@directmail.com', 'Josealdo Raposo', 'Simoes Filho', 'Bahia')
          ('Beatriz', 'Paolino', 23456789012, 71, 935678901, 'bia.pao@securemail.com', 'Rua do Imperador', 02, 'Camacari', 'Bahia')
          ('Camila', 'Soares', 05014188860, 71, 991770403, 'camila.sjs@rica.com', 'Palestina', 02,'Palestina', 'Salvador','Bahia')
          ('Marcelo', 'Ribeiro', 56789012345, 11, 946789012, 'marcelo.ribeiro@fastmail.com', 'Rua dos Artistas', 'Lauro de Freitas', 'Bahia')
          ('Gabriel', 'Gonçalves', 78901234567, 71, 968901234, 'gabriel.goncalves@easyemail.com', 'Rua 2', 10, 'Conolacao', 'Salvador', 'Bahia')
          ('Isadora', 'do Valle', 89012345678, 71, 979012345, 'isadora.martins@directmail.com', 'Rua das Laranjeiras', 45, 'Flores','Salvador','Bahia')
);
SELECT * FROM CARRO;
INSERT INTO CARRO(
	Idcarro, Marca, Modelo, Cor, Ano, Placa, IdCliente, ORDEM_SERVIÇO_IdOrdem, ORDEM_SERVICO_EQUIPE_MECANICA_IdEquipe)
    VALUES(Fiat,  Punto, Vermelho, 2015-07-05, PKSR12864, 

);
SELECT * FROM CARRO_FAZ_SERVICO;
INSERT INTO CARRO_FAZ_SERVICO(

);

SELECT * FROM EQUIPE_MECANICO;
INSERT INTO EQUIPE_MECANICO(

);
SELECT * FROM FUNCIONARIO;
INSERT INTO FUNCIONARIO(

);
SELECT * FROM ORDEM_SERVICO;
INSERT INTO ORDEM_SERVICO(

);
SELECT * FROM SERVICO;
INSERT INTO SERVICO(

);