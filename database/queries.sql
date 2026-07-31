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

-- Livros com quantidades maiores que zero
select * from livro where quantidade > 0;

-- Livros publicados depois de 1950
select * from livro where ano_publicacao > 1950;

-- Livros da categoria tecnologia
select livro.titulo as livro, categoria.nome as categoria 
from livro 
join categoria on livro.categoria_id = categoria.id 
where categoria.id = 4;

-- Autores que não saõ brasileiros
select nome, nacionalidade from autor where not nacionalidade = "Brasileira";

-- Livros em ordem alfabética
select titulo as livro from livro order by titulo;

-- Livros do mais novo ao mais antigo
select titulo as livros from livro order by ano_publicacao desc;

-- Livro com maior quantidade
select titulo as livros, quantidade from livro order by quantidade desc limit 1;

-- Listar todas as nacionalidade existentes
select distinct nacionalidade from autor;

-- Número de livros cadastrados
select count(titulo) as "Total de livros cadastrados" from livro;

-- Média de exemplares por livro
select round(avg(quantidade), 2) "Media de exemplares" from livro;

-- Soma da quantidade de exemplares
select sum(quantidade) as "Quantidade de exemplares" from livro;

-- Quantidade de livros por categoria
select categoria.nome as categoria, count(*) as "quantidade de livro" 
from categoria 
join livro on categoria.id = livro.categoria_id 
group by categoria.nome;

-- Quantidade de livros por autor !
select autor.nome as autor, count(*) as quantidade 
from livro 
join autor on livro.autor_id = autor.id 
group by autor.nome;

-- Autores com mais de 2 livros
select autor.nome as autor, count(*) as "quantidade de livros" 
from livro 
join autor on livro.autor_id = autor.id 
group by autor.nome 
having count(*) > 2;

-- Livro mais antigo (subconsulta)
select titulo, ano_publicacao 
from livro 
where ano_publicacao = (
    select min(ano_publicacao)
    from livro
);


