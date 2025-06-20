CREATE DATABASE faculdade;  /*criando o banco de dados*/
USE faculdade; 

CREATE TABLE IF NOT EXISTS aluno (  /*criando as tabelas*/
  id_aluno INT PRIMARY KEY AUTO_INCREMENT,  
  matricula INT(10) NOT NULL UNIQUE,
  email VARCHAR(30) NOT NULL UNIQUE,
  nome VARCHAR(30) NOT NULL,
  cpf VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS disciplina (
  id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
  sigla VARCHAR(6) NOT NULL UNIQUE,
  nome VARCHAR(30) NOT NULL,
  carga_horaria INT(5) NOT NULL,
  periodo SMALLINT NOT NULL,
  limite_falta INT(5) NOT NULL
);