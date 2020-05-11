CREATE TABLE lancamento (
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL,
	data_vencimento DATE NOT NULL,
	data_pagamento DATE,
	valor NUMERIC(10, 2) NOT NULL,
	observacao VARCHAR(100),
	tipo VARCHAR(20) NOT NULL,
	codigo_categoria SMALLINT NOT NULL,
	codigo_pessoa INTEGER NOT NULL,
	FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo),
	FOREIGN KEY (codigo_pessoa) REFERENCES pessoa(codigo)
);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Salário mensal', '2022-05-12', null, 4500.00, 'Distribuição de lucros', 'RECEITA', 5, 1);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Indenização', '2022-07-13', '2022-07-12', 3125.52, 'Causa na justiça', 'RECEITA', 5, 1);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Aluguel', '2022-07-18', '2022-07-18', 1500.00, 'Apartamento', 'DESPESA', 5, 2);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Medicamentos', '2022-08-01', '2022-08-01', 522.17, 'Diversos', 'DESPESA', 4, 3);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Compras', '2022-09-11', '2022-09-11', 689.72, 'Supermercado', 'DESPESA', 3, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Lanche', '2022-09-16', '2022-09-16', 17.52, 'McDonald', 'DESPESA', 2, 5);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Viagem', '2022-10-21', '2022-10-21', 2500.00, 'Peru', 'DESPESA', 1, 6); 
	
