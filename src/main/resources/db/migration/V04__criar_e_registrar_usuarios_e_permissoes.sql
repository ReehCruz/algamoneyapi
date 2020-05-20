CREATE TABLE usuario (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(150) NOT NULL
);

CREATE TABLE permissao (
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL
);

CREATE TABLE usuario_permissao (
	codigo_usuario INTEGER NOT NULL,
	codigo_permissao INTEGER NOT NULL,
	PRIMARY KEY (codigo_usuario, codigo_permissao),
	FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo),
	FOREIGN KEY (codigo_permissao) REFERENCES permissao(codigo)
);

INSERT INTO usuario (nome, email, senha) VALUES ('Administrador', 'admin@algamoney.com', '$2a$10$LjribSvZMmqAU.gcNMa3WOoPEwbyQmt1fi0ILYq39PKhzNRMY5Txi');
INSERT INTO usuario (nome, email, senha) VALUES ('Rebeca', 'rebeca@algamoney.com', '$2a$10$LVH8krTkKppfkYDauw5XReQ6AbLiV5qqaIPwpRWrGsJ3XtkMgQagC');

INSERT INTO permissao (descricao) VALUES ('ROLE_CADASTRAR_CATEGORIA');
INSERT INTO permissao (descricao) VALUES ('ROLE_PESQUISAR_CATEGORIA');
INSERT INTO permissao (descricao) VALUES ('ROLE_CADASTRAR_PESSOA');
INSERT INTO permissao (descricao) VALUES ('ROLE_REMOVER_PESSOA');
INSERT INTO permissao (descricao) VALUES ('ROLE_PESQUISAR_PESSOA');
INSERT INTO permissao (descricao) VALUES ('ROLE_CADASTRAR_LANCAMENTO');
INSERT INTO permissao (descricao) VALUES ('ROLE_REMOVER_LANCAMENTO');
INSERT INTO permissao (descricao) VALUES ('ROLE_PESQUISAR_LANCAMENTO');

INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 1);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 3);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 4);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 6);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 7);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 8);

INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 8);
