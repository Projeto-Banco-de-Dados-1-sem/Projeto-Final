CREATE TABLE funcionario (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    cargo VARCHAR(30) NOT NULL
);

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    CPF VARCHAR(14),
    telefone VARCHAR(12),
    endereco VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE livro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    autor VARCHAR(50) NOT NULL,
    editora VARCHAR(50) NOT NULL,
    ISBN VARCHAR(50) NOT NULL,
    genero VARCHAR(30) NOT NULL,
    ano_publicacao DATE NOT NULL,
    quantidade_estoque INTEGER NOT NULL
);

CREATE TABLE reserva (
    id SERIAL PRIMARY KEY,
    livro_id INTEGER NOT NULL,
    usuario_id INTEGER NOT NULL,
    data_reserva DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    FOREIGN KEY (livro_id) REFERENCES livro(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE emprestimo (
    id SERIAL PRIMARY KEY,
    livro_id INTEGER NOT NULL,
    usuario_id INTEGER NOT NULL,
    funcionario_id INTEGER NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    FOREIGN KEY (livro_id) REFERENCES livro(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)
);
