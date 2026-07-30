use biblioteca;

insert into autor(
    nome, 
    nacionalidade, 
    data_nascimento
)
values
    ('Machado de Assis', 'Brasileira', '1839-06-21'),
    ('J.K. Rowling', 'Britânica', '1965-07-31'),
    ('George Orwell', 'Britânica', '1903-06-25'),
    ('Robert C. Martin', 'Americana', '1952-12-05');

insert into categoria (nome) 
values 
    ('Romance'),
    ('Fantasia'),
    ('Ficção Científica'),
    ('Tecnologia');

insert into usuario(
    nome,
    email,
    telefone,
    data_cadastro
)
values
    ('João Silva', 'joao@email.com', '(11) 99999-1111', '2026-07-29'),
    ('Maria Souza', 'maria@email.com', '(11) 99999-2222', '2026-07-29'),
    ('Pedro Santos', 'pedro@email.com', NULL, '2026-07-29');

insert into livro(
    titulo,
    isbn,
    ano_publicacao,
    quantidade,
    autor_id,
    categoria_id
)
values
    ('Dom Casmurro', '9788535910663', 1899, 3, 1, 1),
    ('Harry Potter e a Pedra Filosofal', '9788532530783', 1997, 5, 2, 2),
    ('1984', '9788535914845', 1949, 4, 3, 3),
    ('Clean Code', '9780132350884', 2008, 2, 4, 4);

insert into emprestimo(
    usuario_id,
    livro_id,
    data_emprestimo,
    data_prevista
)
values
    (1, 1, '2026-07-29', '2026-08-13'),
    (2, 4, '2026-07-30', '2026-08-13');

