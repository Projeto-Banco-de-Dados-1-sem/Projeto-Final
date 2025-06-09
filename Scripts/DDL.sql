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
    email VARCHAR(50),
    data_cadastro DATE DEFAULT CURRENT_DATE -- adicionado campo opcional
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
    status VARCHAR(15) DEFAULT 'Ativa' CHECK (status IN ('Ativa', 'Cancelada', 'Finalizada')), 
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
    status VARCHAR(15) DEFAULT 'Em andamento' CHECK (status IN ('Em andamento', 'Concluído', 'Atrasado')), 
    FOREIGN KEY (livro_id) REFERENCES livro(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)
);

CREATE TABLE devolucao (
    id SERIAL PRIMARY KEY,
    emprestimo_id INTEGER NOT NULL,
    funcionario_id INTEGER NOT NULL,
    data_devolucao DATE NOT NULL,
    dias_atraso INTEGER,
    valor_multa DECIMAL(10,2),
    multa_pago BOOLEAN DEFAULT FALSE,
    observacao TEXT,
    FOREIGN KEY (emprestimo_id) REFERENCES emprestimo(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)
);
