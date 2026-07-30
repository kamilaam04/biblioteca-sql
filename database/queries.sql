use biblioteca;

-- Listar livros com autores

select livro.titulo as livro, autor.nome as autor 
from livro
join autor on livro.autor_id = autor.id;

-- Listar livros com autor e categotia

select livro.titulo as livro, autor.nome as autor, categoria.nome as categoria 
from livro
join autor on livro.autor_id = autor.id
join categoria on livro.categoria_id = categoria.id;

-- Listar usuário, livro emprestado e data do empréstimo
select usuario.nome as usuario, livro.titulo as livro, emprestimo.data_emprestimo as 'data do emprestimo'
from emprestimo
join usuario on usuario.id = emprestimo.usuario_id
join livro on livro.id = emprestimo.livro_id;
