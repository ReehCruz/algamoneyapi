CREATE TABLE categoria (
	codigo BIGSERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

INSERT INTO categoria(nome) values ('Lazer');
INSERT INTO categoria(nome) values ('Alimenta��o');
INSERT INTO categoria(nome) values ('Supermercado');
INSERT INTO categoria(nome) values ('Farm�cia');
INSERT INTO categoria(nome) values ('Outros');