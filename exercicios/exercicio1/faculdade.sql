CREATE DATABASE faculdade;  /*criando o banco de dados*/
USE faculdade; 

CREATE TABLE IF NOT EXISTS aluno (  /*criando as tabelas*/
  id_aluno int(10) PRIMARY KEY AUTO_INCREMENT,  
  matricula int(10) NOT NULL UNIQUE,
  email varchar(50) NOT NULL UNIQUE,
  nome varchar(50) NOT NULL,
  cpf varchar(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS disciplina (
  id_disciplina int(5) PRIMARY KEY AUTO_INCREMENT,
  sigla varchar(6) NOT NULL UNIQUE,
  nome varchar(60) NOT NULL,
  carga_horaria int NOT NULL,
  periodo smallint NOT NULL,
  limite_falta int NOT NULL
);
