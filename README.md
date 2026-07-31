# Sistema de Gerenciamento de Biblioteca

Projeto desenvolvido para praticar **SQL, MySQL e Docker**.

## Objetivo

Criar um banco de dados para gerenciar uma biblioteca, aplicando conceitos de **modelagem de dados, relacionamentos, consultas SQL e boas práticas**.

## Tecnologias utilizadas

- MySQL
- SQL
- Docker

## Banco de Dados

O projeto possui as seguintes tabelas:

- Autor
- Categoria
- Livro
- Usuário
- Empréstimo

### Relacionamentos

- Um autor pode possuir vários livros.
- Uma categoria pode possuir vários livros.
- Um usuário pode realizar vários empréstimos.
- Um livro pode possuir vários empréstimos.

## Estrutura do projeto

```text
biblioteca-sql/

├── database/
│   ├── schema.sql
│   ├── inserts.sql
│   ├── views.sql
│   ├── queries.sql
│   ├── updates.sql
│   └── deletes.sql
│
└── README.md
