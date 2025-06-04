-- Funcionários
INSERT INTO funcionario (name, cargo) VALUES 
('Maria Silva', 'Atendente'),
('João Santos', 'Bibliotecário'),
('Clara Menezes', 'Auxiliar'),
('Rafael Costa', 'Supervisor'),
('Juliana Rocha', 'Técnica');

-- Usuários
INSERT INTO usuario (name, CPF, telefone, endereco, email) VALUES
('Ana Lima', '123.456.789-00', '11912345678', 'Rua das Flores, 123', 'ana@email.com'),
('Carlos Souza', '987.654.321-00', '21987654321', 'Av. Central, 456', 'carlos@email.com'),
('Beatriz Nunes', '456.789.123-00', '31965432198', 'Rua Verde, 789', 'bia@email.com'),
('Lucas Prado', '321.654.987-00', '11987651234', 'Rua Azul, 101', 'lucas@email.com'),
('Fernanda Lopes', '741.852.963-00', '21999999999', 'Rua Amarela, 202', 'fernanda@email.com'),
('Guilherme Torres', '852.963.741-00', '11988887777', 'Av. Paulista, 900', 'gui@email.com'),
('Mariana Dias', '369.258.147-00', '11911223344', 'Rua Cinza, 111', 'mariana@email.com'),
('Ricardo Melo', '258.147.369-00', '21912344321', 'Rua Branca, 321', 'ricardo@email.com'),
('Larissa Ramos', '111.222.333-44', '31933334444', 'Rua Preta, 555', 'larissa@email.com'),
('Pedro Alencar', '444.333.222-11', '11944445555', 'Rua Roxa, 888', 'pedro@email.com');

-- Livros
INSERT INTO livro (titulo, autor, editora, ISBN, genero, ano_publicacao, quantidade_estoque) VALUES
('One Piece Vol. 1', 'Eiichiro Oda', 'Panini', '978-85-426-0001-1', 'Mangá', '1997-07-22', 10),
('Naruto Vol. 1', 'Masashi Kishimoto', 'Panini', '978-85-426-0002-2', 'Mangá', '1999-09-21', 8),
('Death Note Vol. 1', 'Tsugumi Ohba', 'JBC', '978-85-426-0003-3', 'Mangá', '2003-12-01', 6),
('Attack on Titan Vol. 1', 'Hajime Isayama', 'Kodansha', '978-85-426-0004-4', 'Mangá', '2009-03-17', 7),
('Dragon Ball Vol. 1', 'Akira Toriyama', 'Panini', '978-85-426-0005-5', 'Mangá', '1984-11-20', 9),
('Fullmetal Alchemist Vol. 1', 'Hiromu Arakawa', 'JBC', '978-85-426-0006-6', 'Mangá', '2001-07-12', 5),
('Bleach Vol. 1', 'Tite Kubo', 'Panini', '978-85-426-0007-7', 'Mangá', '2001-08-07', 6),
('Tokyo Ghoul Vol. 1', 'Sui Ishida', 'Panini', '978-85-426-0008-8', 'Mangá', '2011-09-08', 4),
('Berserk Vol. 1', 'Kentaro Miura', 'Panini', '978-85-426-0009-9', 'Mangá', '1990-11-26', 3),
('Chainsaw Man Vol. 1', 'Tatsuki Fujimoto', 'Panini', '978-85-426-0010-0', 'Mangá', '2018-12-03', 8),
('Dom Casmurro', 'Machado de Assis', 'Editora A', '978-85-000000-1-0', 'Romance', '1899-01-01', 5),
('1984', 'George Orwell', 'Companhia das Letras', '978-85-000000-2-0', 'Distopia', '1949-06-08', 4),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Editora C', '978-85-000000-3-0', 'Fábula', '1943-04-06', 7),
('A Revolução dos Bichos', 'George Orwell', 'Companhia das Letras', '978-85-000000-4-0', 'Fábula', '1945-08-17', 4),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', '978-85-000000-5-0', 'Fantasia', '1997-06-26', 6),
('Ensaio Sobre a Cegueira', 'José Saramago', 'Companhia das Letras', '978-85-000000-6-0', 'Drama', '1995-01-01', 3),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins', '978-85-000000-7-0', 'Fantasia', '1937-09-21', 6),
('O Conto da Aia', 'Margaret Atwood', 'Rocco', '978-85-000000-8-0', 'Distopia', '1985-01-01', 4),
('A Menina que Roubava Livros', 'Markus Zusak', 'Intrínseca', '978-85-000000-9-0', 'Histórico', '2005-01-01', 5),
('O Alquimista', 'Paulo Coelho', 'HarperCollins', '978-85-000001-0-0', 'Aventura', '1988-01-01', 5);


-- Reservas
INSERT INTO reserva (livro_Id, usuario_Id, data_reserva, data_devolucao) VALUES
(3, 7, '2025-05-20', '2025-05-27'),
(15, 2, '2025-05-22', '2025-05-29'),
(9, 5, '2025-06-01', '2025-06-08'),
(11, 1, '2025-05-10', '2025-05-17'),
(6, 8, '2025-06-02', '2025-06-09'),
(18, 3, '2025-04-25', '2025-05-02'),
(1, 10, '2025-05-15', '2025-05-22'),
(13, 6, '2025-06-04', '2025-06-11'),
(5, 4, '2025-05-28', '2025-06-04'),
(20, 9, '2025-06-03', '2025-06-10');

-- Empréstimos
INSERT INTO emprestimo (livro_id, usuario_id, funcionario_id, data_emprestimo, data_devolucao) VALUES
(5, 3, 2, '2025-05-01', '2025-05-08'),
(12, 7, 1, '2025-04-20', '2025-04-27'),
(1, 6, 4, '2025-05-14', '2025-05-21'),
(18, 9, 3, '2025-05-30', '2025-06-06'),
(7, 2, 5, '2025-06-01', '2025-06-08'),
(10, 1, 1, '2025-05-25', '2025-06-01'),
(15, 4, 2, '2025-06-03', '2025-06-10'),
(20, 8, 5, '2025-05-18', '2025-05-25'),
(3, 10, 3, '2025-04-28', '2025-05-05'),
(14, 5, 4, '2025-06-02', '2025-06-09');
