use biblioteca;

update emprestimo 
set `status` = "DEVOLVIDO", data_devolucao = "2026-04-14"
where id = 21;    -- Sem where todos os registros são alterados!

update livro 
set quantidade = quantidade + 1 
where id = 1;