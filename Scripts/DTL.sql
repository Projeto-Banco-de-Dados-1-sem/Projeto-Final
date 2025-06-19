BEGIN;
SAVEPOINT inicio_operacao;

INSERT INTO clientes (nome, email) 
VALUES ('Amanda Costa', 'amanda@email.com');

COMMIT;

BEGIN;

SAVEPOINT antes_insercao;
INSERT INTO pedidos (cliente_id, data) VALUES (1, CURRENT_DATE);

SAVEPOINT antes_itens;
INSERT INTO itens_pedido (pedido_id, produto_id) VALUES (1, 100);

COMMIT;

BEGIN;

SAVEPOINT ponto_verificacao;
UPDATE produtos SET estoque = estoque - 1 WHERE id = 10;

DO $$
BEGIN
    IF (SELECT estoque FROM produtos WHERE id = 10) < 0 THEN
        ROLLBACK TO ponto_verificacao;
        RAISE EXCEPTION 'Estoque insuficiente';
    END IF;
END $$;

COMMIT;

BEGIN;

SAVEPOINT etapa_1;
DELETE FROM temporarios WHERE data < CURRENT_DATE - INTERVAL '30 days';

SAVEPOINT etapa_2;
INSERT INTO registros_historicos SELECT * FROM temporarios;

SAVEPOINT etapa_3;
TRUNCATE TABLE temporarios;

COMMIT;