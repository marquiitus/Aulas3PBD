CREATE DATABASE salaoMarcos;
USE salaoMarcos;

CREATE TABLE IF NOT EXISTS Cliente (
	id_cliente int(10) PRIMARY KEY AUTOINCREMENT,
  nome varchar(20) not NULL,
  telefone varchar(15) NOT NULL UNIQUE,
  email varchar(15) NOT NULL UNIQUE,
  cartao_credito varchar(20) NOT NULL UNIQUE,
  saldo_credito double(10) 
); 

CREATE TABLE IF NOT EXISTS Pacote (
	id_pacote int(10) PRIMARY KEY AUTOINCREMENT,
  nome_pacote varchar(15) NOT NULL,
  descricao varchar(40) NOT NULL,
  preco_total double(10) NOT NULL
);