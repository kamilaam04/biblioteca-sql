-- create database biblioteca;

use biblioteca;

create table autor(
    id int auto_increment primary key,
    nome varchar(100) not null,
    nacionalidade varchar(30),
    data_nascimento date
);

create table categoria(
    id int auto_increment primary key,
    nome varchar(100) not null unique
);

create table usuario(
    id int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    telefone varchar(20),
    data_cadastro date not null
);

create table livro(
    id int auto_increment primary key,
    titulo varchar(100) not null,
    isbn varchar(20) unique,
    ano_publicacao year,
    quantidade int not null default 0 check (quantidade >= 0),
    autor_id int, 
    categoria_id int,
    foreign key (autor_id) references autor(id),
    foreign key (categoria_id) references categoria(id)
);

create table emprestimo(
    id int auto_increment primary key,
    usuario_id int not null,
    livro_id int not null,
    data_emprestimo date not null,
    data_prevista date not null,
    data_devolucao date,
    `status` varchar(20) not null default 'EMPRESTADO',
    foreign key (usuario_id) references usuario(id),
    foreign key (livro_id) references livro(id)
);