-- FUNCIONÁRIOS (5)
INSERT INTO funcionario (name, cargo) VALUES
('Maria Oliveira', 'Atendente'),
('Carlos Lima', 'Supervisor'),
('Ana Bezerra', 'Bibliotecária'),
('João Mendes', 'Auxiliar'),
('Fernanda Rocha', 'Gerente');

-- USUÁRIOS (26)
INSERT INTO usuario (name, CPF, telefone, endereco, email, data_cadastro) VALUES
('Amanda Costa', '123.456.789-00', '11998765432', 'Rua das Flores, 10', 'amanda@email.com', '2025-01-10'),
('Bruno Silva', '987.654.321-00', '21987654321', 'Av. Paulista, 1000', 'bruno@email.com', '2025-01-12'),
('Camila Dias', '456.789.123-00', '31912345678', 'Rua Azul, 123', 'camila@email.com', '2025-01-15'),
('Daniel Pereira', '321.654.987-00', '11987651234', 'Av. Central, 456', 'daniel@email.com', '2025-02-01'),
('Eduarda Nunes', '741.852.963-00', '21999999999', 'Rua Amarela, 202', 'eduarda@email.com', '2025-02-10'),
('Felipe Torres', '852.963.741-00', '11988887777', 'Av. Faria Lima, 900', 'felipe@email.com', '2025-02-15'),
('Gabriela Moraes', '369.258.147-00', '11911223344', 'Rua Cinza, 111', 'gabriela@email.com', '2025-03-01'),
('Henrique Melo', '258.147.369-00', '21912344321', 'Rua Branca, 321', 'henrique@email.com', '2025-03-05'),
('Isabela Ramos', '111.222.333-44', '31933334444', 'Rua Preta, 555', 'isabela@email.com', '2025-03-10'),
('Jorge Alencar', '444.333.222-11', '11944445555', 'Rua Roxa, 888', 'jorge@email.com', '2025-03-12'),
('Lucas Ferreira', '159.753.486-00', '21955554444', 'Rua Verde, 50', 'lucas@email.com', '2025-03-15'),
('Mariana Souza', '753.951.852-00', '31966667777', 'Rua Rosa, 33', 'mariana@email.com', '2025-03-17'),
('Nicolas Alves', '357.159.258-00', '11977778888', 'Av. Brasil, 600', 'nicolas@email.com', '2025-03-20'),
('Olívia Martins', '258.357.159-00', '21988889999', 'Rua Lilás, 12', 'olivia@email.com', '2025-03-22'),
('Pedro Rocha', '147.258.369-00', '31999990000', 'Rua Marrom, 7', 'pedro@email.com', '2025-03-25'),
('Quésia Lima', '369.147.258-00', '11900001111', 'Rua Bege, 40', 'quesia@email.com', '2025-03-28'),
('Rafael Andrade', '951.753.159-00', '21911112222', 'Rua Bordô, 90', 'rafael@email.com', '2025-04-01'),
('Sara Vasconcelos', '159.159.951-00', '31922223333', 'Rua Jade, 22', 'sara@email.com', '2025-04-05'),
('Tiago Gomes', '753.357.159-00', '11933334444', 'Rua Coral, 11', 'tiago@email.com', '2025-04-08'),
('Úrsula Carvalho', '852.456.123-00', '21944445555', 'Av. Independência, 80', 'ursula@email.com', '2025-04-10'),
('Victor Ribeiro', '951.456.852-00', '31955556666', 'Rua Cristal, 99', 'victor@email.com', '2025-04-12'),
('Wesley Monteiro', '123.951.753-00', '11966667777', 'Rua Prata, 13', 'wesley@email.com', '2025-04-15'),
('Xênia Pires', '357.258.456-00', '21977778888', 'Rua Bronze, 25', 'xenia@email.com', '2025-04-17'),
('Yasmin Teixeira', '258.456.357-00', '31988889999', 'Rua Ferro, 18', 'yasmin@email.com', '2025-04-20'),
('Zeca Fonseca', '147.369.258-00', '11999990000', 'Rua Ouro, 5', 'zeca@email.com', '2025-04-22'),
('Arthur Nogueira', '951.159.357-00', '21900001111', 'Rua Níquel, 30', 'arthur@email.com', '2025-04-25');

-- LIVROS (20)
INSERT INTO livro (titulo, autor, editora, ISBN, genero, ano_publicacao, quantidade_estoque) VALUES
-- Mangás
('One Piece Vol. 1', 'Eiichiro Oda', 'Panini', '978-85-426-0001-1', 'Mangá', '1997-07-22', 10),
('Naruto Vol. 1', 'Masashi Kishimoto', 'Panini', '978-85-426-0002-2', 'Mangá', '1999-09-21', 8),
('Death Note Vol. 1', 'Tsugumi Ohba', 'JBC', '978-85-426-0003-3', 'Mangá', '2003-12-01', 6),
('Fullmetal Alchemist Vol. 1', 'Hiromu Arakawa', 'JBC', '978-85-426-0006-6', 'Mangá', '2001-07-12', 5),

-- Fantasia
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', '978-85-000000-5-0', 'Fantasia', '1997-06-26', 6),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins', '978-85-000000-7-0', 'Fantasia', '1937-09-21', 6),

-- Distopia
('1984', 'George Orwell', 'Companhia das Letras', '978-85-000000-2-0', 'Distopia', '1949-06-08', 4),
('Admirável Mundo Novo', 'Aldous Huxley', 'Harper & Brothers', '978-85-000000-8-0', 'Distopia', '1932-08-31', 5),

-- Romance
('Dom Casmurro', 'Machado de Assis', 'Editora A', '978-85-000000-1-0', 'Romance', '1899-01-01', 5),
('Orgulho e Preconceito', 'Jane Austen', 'Penguin Classics', '978-85-000001-1-1', 'Romance', '1813-01-28', 4),

-- Clássicos
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Editora C', '978-85-000000-3-0', 'Fábula', '1943-04-06', 7),
('A Revolução dos Bichos', 'George Orwell', 'Companhia das Letras', '978-85-000000-4-0', 'Fábula', '1945-08-17', 4),

-- Aventura
('O Alquimista', 'Paulo Coelho', 'HarperCollins', '978-85-000001-0-0', 'Aventura', '1988-01-01', 5),
('As Aventuras de Sherlock Holmes', 'Arthur Conan Doyle', 'Penguin Books', '978-85-000001-2-2', 'Aventura', '1892-10-14', 6),

-- Tecnologia
('Clean Code', 'Robert C. Martin', 'Prentice Hall', '978-0132350884', 'Tecnologia', '2008-08-11', 7),
('Design Patterns', 'Erich Gamma', 'Addison-Wesley', '978-0201633610', 'Tecnologia', '1994-10-31', 6),

-- Drama
('Ensaio Sobre a Cegueira', 'José Saramago', 'Companhia das Letras', '978-85-000000-6-0', 'Drama', '1995-01-01', 3),
('O Morro dos Ventos Uivantes', 'Emily Brontë', 'Penguin Classics', '978-85-000001-3-3', 'Drama', '1847-12-01', 4),

-- Ficção Científica
('Duna', 'Frank Herbert', 'Chilton Books', '978-85-000001-4-4', 'Ficção Científica', '1965-08-01', 5),
('Neuromancer', 'William Gibson', 'Ace Books', '978-85-000001-5-5', 'Ficção Científica', '1984-07-01', 4);


-- RESERVAS (15)
INSERT INTO reserva (livro_id, usuario_id, data_reserva, data_devolucao, status) VALUES
(1, 3, '2025-05-20', '2025-05-27', 'Ativa'),
(2, 5, '2025-05-22', '2025-05-29', 'Cancelada'),
(3, 7, '2025-06-01', '2025-06-08', 'Finalizada'),
(4, 9, '2025-06-02', '2025-06-09', 'Ativa'),
(5, 10, '2025-04-25', '2025-05-02', 'Finalizada'),
(6, 12, '2025-05-15', '2025-05-22', 'Cancelada'),
(7, 14, '2025-06-04', '2025-06-11', 'Ativa'),
(8, 16, '2025-05-28', '2025-06-04', 'Finalizada'),
(9, 18, '2025-06-03', '2025-06-10', 'Ativa'),
(10, 20, '2025-06-05', '2025-06-12', 'Ativa'),
(11, 22, '2025-06-07', '2025-06-14', 'Ativa'),
(12, 24, '2025-06-09', '2025-06-16', 'Finalizada'),
(13, 26, '2025-06-11', '2025-06-18', 'Cancelada'),
(14, 1, '2025-06-13', '2025-06-20', 'Ativa'),
(15, 2, '2025-06-15', '2025-06-22', 'Finalizada');

(7, 19, '2025-05-12', '2025-05-19', 'Ativa'),
(14, 11, '2025-06-03', '2025-06-10', 'Finalizada'),
(3, 8, '2025-06-15', '2025-06-22', 'Cancelada'),
(18, 2, '2025-06-20', '2025-06-27', 'Ativa'),
(10, 25, '2025-05-28', '2025-06-04', 'Finalizada');

-- EMPRÉSTIMOS (18)
INSERT INTO emprestimo (livro_id, usuario_id, funcionario_id, data_emprestimo, data_devolucao, status) VALUES
(1, 3, 1, '2025-05-01', '2025-05-08', 'Concluído'),
(2, 4, 2, '2025-05-05', '2025-05-12', 'Em andamento'),
(3, 5, 3, '2025-05-10', '2025-05-17', 'Atrasado'),
(4, 6, 4, '2025-05-15', '2025-05-22', 'Em andamento'),
(5, 7, 5, '2025-05-20', '2025-05-27', 'Concluído'),
(6, 8, 1, '2025-05-25', '2025-06-01', 'Concluído'),
(7, 9, 2, '2025-06-01', '2025-06-08', 'Em andamento'),
(8, 10, 3, '2025-06-03', '2025-06-10', 'Em andamento'),
(9, 11, 4, '2025-06-05', '2025-06-12', 'Em andamento'),
(10, 12, 5, '2025-06-07', '2025-06-14', 'Concluído'),
(11, 13, 1, '2025-06-09', '2025-06-16', 'Em andamento'),
(12, 14, 2, '2025-06-11', '2025-06-18', 'Em andamento'),
(13, 15, 3, '2025-06-13', '2025-06-20', 'Atrasado'),
(14, 16, 4, '2025-06-15', '2025-06-22', 'Em andamento'),
(15, 17, 5, '2025-06-17', '2025-06-24', 'Concluído'),
(16, 18, 1, '2025-06-19', '2025-06-26', 'Em andamento'),
(17, 19, 2, '2025-06-21', '2025-06-28', 'Em andamento'),
(18, 20, 3, '2025-06-23', '2025-06-30', 'Concluído');

(9, 6, 5, '2025-06-01', '2025-06-08', 'Concluído'),
(17, 14, 3, '2025-06-10', '2025-06-17', 'Atrasado'),
(5, 22, 2, '2025-06-12', '2025-06-19', 'Em andamento'),
(12, 9, 1, '2025-05-15', '2025-05-22', 'Concluído'),
(20, 7, 4, '2025-06-17', '2025-06-24', 'Em andamento'),
(2, 18, 5, '2025-06-05', '2025-06-12', 'Em andamento'),
(15, 26, 3, '2025-06-20', '2025-06-27', 'Concluído'),
(4, 10, 2, '2025-06-25', '2025-07-02', 'Atrasado'),
(11, 1, 1, '2025-05-08', '2025-05-15', 'Concluído'),
(8, 17, 4, '2025-06-15', '2025-06-22', 'Em andamento');

-- DEVOLUÇÕES (5)
INSERT INTO devolucao (emprestimo_id, funcionario_id, data_devolucao, dias_atraso, valor_multa, multa_pago, observacao) VALUES
(1, 1, '2025-05-08', 0, 0.00, TRUE, 'Devolução no prazo.'),
(5, 5, '2025-05-27', 1, 5.00, FALSE, 'Devolução com atraso.'),
(6, 1, '2025-06-01', 0, 0.00, TRUE, 'Devolução no prazo.'),
(10, 5, '2025-06-14', 0, 0.00, TRUE, 'Devolução no prazo.'),
(15, 5, '2025-06-24', 2, 10.00, FALSE, 'Devolução com atraso.');
