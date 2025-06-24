CREATE DATABASE IF NOT EXISTS albergueAlmeida;
USE albergueAlmeida;

CREATE TABLE IF NOT EXISTS Usuario (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  documento VARCHAR(20) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  telefone VARCHAR(20) NOT NULL UNIQUE,
  data_cadastro VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Quarto (
  id_quarto INT PRIMARY KEY AUTO_INCREMENT,
  capacidade INT(10) NOT NULL,
  banheiro INT(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS Vaga (
  id_vaga INT PRIMARY KEY AUTO_INCREMENT,
  id_quarto INT,
  preco DOUBLE NOT NULL,
  identificador VARCHAR(50) NOT NULL,
  FOREIGN KEY (id_quarto) REFERENCES Quarto(id_quarto)
);

CREATE TABLE IF NOT EXISTS ObservacaoVaga (
  id_observacaoVaga INT PRIMARY KEY AUTO_INCREMENT,
  descricao VARCHAR(100) NOT NULL 
);

CREATE TABLE IF NOT EXISTS vaga_observacaoVaga (
  id_observacaoVaga INT PRIMARY KEY AUTO_INCREMENT,
  id_vaga INT,
  PRIMARY KEY (id_observacaoVaga, id_vaga),
  FOREIGN KEY (id_observacaoVaga) REFERENCES ObservacaoVaga(id_observacaoVaga),
  FOREIGN KEY (id_vaga) REFERENCES Vaga(id_vaga)
);

CREATE TABLE IF NOT EXISTS Reserva (
  id_reserva INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT,
  data_comeco VARCHAR(20) NOT NULL,
  data_fim VARCHAR(20) NOT NULL,
  data_reserva VARCHAR(20) NOT NULL,
  status VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE IF NOT EXISTS reserva_vaga (
  id_reserva_vaga INT PRIMARY KEY AUTO_INCREMENT,
  id_reserva INT,
  id_vaga INT,
  FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva),
  FOREIGN KEY (id_vaga) REFERENCES Vaga(id_vaga)
);

CREATE TABLE IF NOT EXISTS Pagamento (
  id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
  id_reserva INT,
  valor DOUBLE NOT NULL,
  data VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva)
);