-- 1. Criação dos usúarios
CREATE USER bibliotecario WITH PASSWORD 'bib123';
CREATE USER assistente WITH PASSWORD 'assist123';

-- 2. Concessão de Permissões
GRANT ALL PRIVILEGES ON funcionario, usuario, livro, reserva, emprestimo, devolucao TO admin;

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin;

-- BIBLIOTECARIO: leitura + escrita parcial
GRANT SELECT ON funcionario, usuario, livro, reserva, emprestimo, devolucao TO bibliotecario;
GRANT INSERT, UPDATE ON reserva, emprestimo, devolucao TO bibliotecario;

-- Conceder uso das sequências associadas às tabelas que ele pode inserir
GRANT USAGE, SELECT ON SEQUENCE 
    reserva_id_seq,
    emprestimo_id_seq,
    devolucao_id_seq
TO bibliotecario;

-- ASSISTENTE: apenas leitura
GRANT SELECT ON funcionario, usuario, livro, reserva, emprestimo, devolucao TO assistente;

-- 3. Exemplo de REVOKE
-- Revogar acesso de leitura à tabela funcionario do assistente
REVOKE SELECT ON funcionario FROM assistente;