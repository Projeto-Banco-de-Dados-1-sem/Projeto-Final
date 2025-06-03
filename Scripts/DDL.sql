CREATE TABLE livro (
    id SERIAL PRIMARY KEY,
    FOREIGN KEY (usuario_Id) REFERENCES usuario(id),
    titulo VARCHAR(50) NOT NULL,
    autor VARCHAR(50) NOT NULL,
    editora VARCHAR(50) NOT NULL,
    ISBN VARCHAR(50) NOT NULL,
    genero VARCHAR(30) NOT NULL,
    ano_publicacao DATE NOT NULL,
    quantidade_estoque INTEGER NOT NULL,
);

CREATE TABLE reserva(
    id SERIAL PRIMARY KEY,
    FOREIGN KEY (livro_Id) REFERENCES livro(id),
    FOREIGN KEY (usuario_Id) REFERENCES usuario(id),
    data_reserva DATE NOT NULL,
    data_devolucao DATE NOT NULL,
);

CREATE TABLE emprestimo(
	id SERIAL PRIMARY KEY,
	--FOREIGN KEY (funcionario_Id) REFERENCES funcionario(id),
);

CREATE TABLE funcionario(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    cargo VARCHAR(30) NOT NULL
);

CREATE TABLE usuario(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    CPF VARCHAR(14),
    telefone VARCHAR(12),
    endereco VARCHAR(50),
    email VARCHAR(50)
);