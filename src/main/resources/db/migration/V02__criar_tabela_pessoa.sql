CREATE TABLE pessoa (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	logradouro VARCHAR(100),
	numero VARCHAR(6),
	complemento VARCHAR(100),
	bairro VARCHAR(50),
	cep VARCHAR(8),
	cidade VARCHAR(50),
	estado VARCHAR(2),
	ativo BOOLEAN NOT NULL
);

INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Rebeca Cruz', 'Baronesa', '2415', NULL, 'Baronesa', '12324324', 'Osasco', 'SP', 't'); 
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Donavan BRQ', 'Rua Mamore', '106', 'Sei la', 'Sei la', '24645633', 'Carapicuiba', 'SP', 't'); 
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Ivo BRQ', 'Alamenda Araguaia', '12', NULL, 'Sei la', '35645454', 'Mooca', 'CE', 't');
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Nata Cruz', 'Av Don João', '8', NULL, 'Sei la', '123567455', 'Brotas', 'BA', 't');
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Daniel BRQ', 'Av Felpe Santos', '3030', NULL, 'Sei la', '087686', 'Santos', 'MA', 'f');	
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo) 
	VALUES ('Marcia Nelma', 'Rua do Traidor', '2012', NULL, 'Sei la', '8675634', 'Itarantim', 'BA', 't');