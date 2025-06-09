-- Saber se o livro esta disponivel para reserva ou emprestimo
select livro.titulo, livro.quantidade_estoque,
sum(case when emprestimo.status in ('Em andamento', 'Atrasado') then 1 else 0 end) as emprestimos_ativos,
sum(case when reserva.status = 'Ativa' then 1 else 0 end) as reservas_ativas,

greatest(
    livro.quantidade_estoque - sum(case when emprestimo.status in ('Em andamento', 'Atrasado') then 1 else 0 end)
    - sum(case when reserva.status = 'Ativa' then 1 else 0 end), 0
) as disponivel

from livro 
left join emprestimo on emprestimo.livro_id = livro.id
left join reserva on reserva.livro_id = livro.id
group by livro.id
order by livro.id

-- Saber o status do emprestimo de um usuario
select usuario.name, emprestimo.data_devolucao, emprestimo.status 
from emprestimo
left join usuario on emprestimo.usuario_id = usuario.id 
order by emprestimo.status

-- Saber o status da reserva de um usuario
select usuario.name, reserva.data_devolucao, reserva.status 
from reserva
left join usuario on reserva.usuario_id = usuario.id 
order by reserva.status

-- Saber sobre a devolução do usuario
SELECT usuario.name AS usuario_name, livro.titulo, devolucao.data_devolucao, devolucao.dias_atraso, 
devolucao.valor_multa, devolucao.multa_pago, funcionario.name AS funcionario_name, devolucao.observacao
FROM devolucao
LEFT JOIN emprestimo ON devolucao.emprestimo_id = emprestimo.id
LEFT JOIN usuario ON emprestimo.usuario_id = usuario.id
LEFT JOIN livro ON emprestimo.livro_id = livro.id
LEFT JOIN funcionario ON devolucao.funcionario_id = funcionario.id
ORDER BY devolucao.valor_multa;


select usuario.name, livro.titulo from emprestimo 
inner join usuario on usuario_id = usuario.id
inner join livro on livro_id = livro.id
order by usuario.id

select * from emprestimo
order by usuario_id