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
    ('Robert C. Martin', 'Americana', '1952-12-05'),
    ('J.R.R. Tolkien','Britânica','1892-01-03'),
    ('Stephen King','Americana','1947-09-21'),
    ('Yuval Noah Harari','Israelense','1976-02-24'),
    ('Dan Brown','Americana','1964-06-22'),
    ('Jane Austen','Britânica','1775-12-16'),
    ('Clarice Lispector','Brasileira','1920-12-10'),
    ('Monteiro Lobato','Brasileira','1882-04-18'),
    ('Carl Sagan','Americana','1934-11-09');


insert into categoria (nome) 
values 
    ('Romance'),
    ('Fantasia'),
    ('Ficção Científica'),
    ('Tecnologia'),
    ('Suspense'),
    ('Divulgação científica'),
    ('História'),
    ('Filosofia'),
    ('Ciência'),
    ('Infantil');

insert into usuario(
    nome,
    email,
    telefone,
    data_cadastro
)
values
    ('João Silva', 'joao@email.com', '1199999-1111', '2026-07-29'),
    ('Maria Souza', 'maria@email.com', '1199999-2222', '2026-07-29'),
    ('Carlos Oliveira','carlos@email.com','11999990001','2026-01-05'),
    ('Fernanda Lima','fernanda@email.com','11999990002','2026-01-07'),
    ('Lucas Pereira','lucas@email.com','11999990003','2026-01-10'),
    ('Ana Martins','ana@email.com','11999990004','2026-01-12'),
    ('Bruno Rocha','bruno@email.com','11999990005','2026-01-15'),
    ('Juliana Costa','juliana@email.com','11999990006','2026-01-18'),
    ('Ricardo Alves','ricardo@email.com','11999990007','2026-01-20'),
    ('Patrícia Gomes','patricia@email.com','11999990008','2026-01-22'),
    ('Eduardo Souza','eduardo@email.com','11999990009','2026-01-25'),
    ('Camila Ribeiro','camila@email.com','11999990010','2026-01-28');

insert into livro(
    titulo,
    isbn,
    ano_publicacao,
    quantidade,
    autor_id,
    categoria_id
)
values
    ('Dom Casmurro','9788535910663',1899,3,1,1),
    ('Harry Potter e a Pedra Filosofal','9788532530783',1997,5,2,2),
    ('1984','9788535914845',1949,4,3,3),
    ('Clean Code','9780132350884',2008,2,4,4),
    ('O Hobbit','9788595084742',1937,4,5,2),
    ('O Senhor dos Anéis','9788533613379',1954,6,5,2),
    ('It - A Coisa','9788560280944',1986,3,6,5),
    ('O Iluminado','9788581050485',1977,2,6,5),
    ('Sapiens','9788525432186',2011,5,7,7),
    ('Homo Deus','9788535928194',2015,4,7,7),
    ('Anjos e Demônios','9788575421134',2000,4,8,5),
    ('O Código Da Vinci','9788575422391',2003,5,8,5),
    ('Orgulho e Preconceito','9788537811012',1813,3,9,1),
    ('Emma','9780141439587',1815,2,9,1),
    ('A Hora da Estrela','9788532505669',1977,4,10,1),
    ('Perto do Coração Selvagem','9788520931233',1943,2,10,1),
    ('Reinações de Narizinho','9788525044648',1931,6,11,10),
    ('Caçadas de Pedrinho','9788525044662',1933,5,11,10),
    ('Cosmos','9788535902774',1980,3,12,6),
    ('O Mundo Assombrado pelos Demônios','9788535908349',1995,2,12,6),
    ('Memórias Póstumas de Brás Cubas','9788535912773',1881,4,1,1),
    ('Quincas Borba','9788535912780',1891,3,1,1),
    ('Harry Potter e a Câmara Secreta','9788532511669',1998,5,2,2),
    ('Harry Potter e o Prisioneiro de Azkaban','9788532512062',1999,5,2,2);

insert into emprestimo(
    usuario_id,
    livro_id,
    data_emprestimo,
    data_prevista,
    data_devolucao,
    `status`
)
values
    (1,1,'2026-01-10','2026-01-24','2026-01-22','DEVOLVIDO'),
    (2,2,'2026-01-12','2026-01-26','2026-01-25','DEVOLVIDO'),
    (3,3,'2026-01-15','2026-01-29',NULL,'EMPRESTADO'),
    (4,4,'2026-01-18','2026-02-01','2026-01-30','DEVOLVIDO'),
    (5,5,'2026-02-01','2026-02-15','2026-02-14','DEVOLVIDO'),
    (6,6,'2026-02-02','2026-02-16',NULL,'EMPRESTADO'),
    (7,7,'2026-02-04','2026-02-18','2026-02-17','DEVOLVIDO'),
    (8,8,'2026-02-05','2026-02-19',NULL,'EMPRESTADO'),
    (9,9,'2026-02-08','2026-02-22','2026-02-20','DEVOLVIDO'),
    (10,10,'2026-02-10','2026-02-24','2026-02-22','DEVOLVIDO'),
    (1,11,'2026-02-12','2026-02-26',NULL,'EMPRESTADO'),
    (2,12,'2026-02-14','2026-02-28','2026-02-27','DEVOLVIDO'),
    (3,13,'2026-03-01','2026-03-15','2026-03-13','DEVOLVIDO'),
    (4,14,'2026-03-03','2026-03-17',NULL,'EMPRESTADO'),
    (5,15,'2026-03-05','2026-03-19','2026-03-18','DEVOLVIDO'),
    (6,16,'2026-03-08','2026-03-22','2026-03-20','DEVOLVIDO'),
    (7,17,'2026-03-10','2026-03-24',NULL,'EMPRESTADO'),
    (8,18,'2026-03-12','2026-03-26','2026-03-24','DEVOLVIDO'),
    (9,19,'2026-03-15','2026-03-29',NULL,'EMPRESTADO'),
    (10,20,'2026-03-18','2026-04-01','2026-03-30','DEVOLVIDO'),
    (1,21,'2026-04-01','2026-04-15',NULL,'EMPRESTADO'),
    (2,22,'2026-04-02','2026-04-16','2026-04-15','DEVOLVIDO'),
    (3,23,'2026-04-04','2026-04-18',NULL,'EMPRESTADO'),
    (4,24,'2026-04-06','2026-04-20','2026-04-18','DEVOLVIDO'),
    (5,2,'2026-04-08','2026-04-22',NULL,'EMPRESTADO'),
    (6,5,'2026-04-10','2026-04-24','2026-04-23','DEVOLVIDO'),
    (7,8,'2026-04-12','2026-04-26',NULL,'EMPRESTADO'),
    (8,11,'2026-04-15','2026-04-29','2026-04-28','DEVOLVIDO'),
    (9,14,'2026-04-18','2026-05-02',NULL,'EMPRESTADO'),
    (10,17,'2026-04-20','2026-05-04','2026-05-02','DEVOLVIDO');

