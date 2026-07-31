

use biblioteca;

CREATE VIEW vw_emprestimos AS
SELECT
    e.id,
    u.nome AS usuario,
    l.titulo AS livro,
    a.nome AS autor,
    c.nome AS categoria,
    e.data_emprestimo,
    e.data_prevista,
    e.data_devolucao,
    e.status
FROM emprestimo e
JOIN usuario u
    ON e.usuario_id = u.id
JOIN livro l
    ON e.livro_id = l.id
JOIN autor a
    ON l.autor_id = a.id
JOIN categoria c
    ON l.categoria_id = c.id;

