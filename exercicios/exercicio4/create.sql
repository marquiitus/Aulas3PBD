CREATE DATABASE IF NOT EXISTS salaoMarcos;  --criando o banco de dados

CREATE TABLE IF NOT EXISTS salaoMarcos.Cliente(  --criando todas as tabelas
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(20) NOT NULL,
  telefone VARCHAR(25) NOT NULL UNIQUE,
  email VARCHAR(20) NOT NULL UNIQUE,
  cartao_credito VARCHAR(20) NOT NULL UNIQUE,
  saldo_credito DOUBLE 
); 

CREATE TABLE IF NOT EXISTS salaoMarcos.FilaEspera(
	id_fila INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT,
  hora_entrada VARCHAR(20) NOT NULL,
  status VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE IF NOT EXISTS salaoMarcos.Pacote(
	id_pacote INT PRIMARY KEY AUTO_INCREMENT,
  nome_pacote VARCHAR(15) NOT NULL,
  descricao VARCHAR(40) NOT NULL,
  preco_total DOUBLE NOT NULL
);

CREATE TABLE IF NOT EXISTS salaoMarcos.Pagamento (
  id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
  id_reserva INT,
  valor DOUBLE,
  data_pagamento VARCHAR(10),
  status_pagamento VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS salaoMarcos.Profissional (
  id_profissional INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
  telefone VARCHAR(20) NOT NULL UNIQUE,
  email VARCHAR(50) NOT NULL UNIQUE,
  expediente VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS salaoMarcos.Especialidade (
  id_especialidade INT PRIMARY KEY AUTO_INCREMENT,
  nome_especialidade VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS salaoMarcos.especialidade_profissional (
  id_especialidadeProfissional INT PRIMARY KEY AUTO_INCREMENT,
  id_profissional INT NOT NULL,
  id_especialidade INT NOT NULL,
  FOREIGN KEY (id_profissional) REFERENCES Profissional(id_profissional),
  FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE IF NOT EXISTS salaoMarcos.Servico (
  id_servico INT PRIMARY KEY AUTO_INCREMENT,
  id_especialidade INT NOT NULL,
  nome_servico VARCHAR(50) NOT NULL,
  descricao VARCHAR(100),
  duracao INT,
  preco DOUBLE NOT NULL,
  FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE IF NOT EXISTS salaoMarcos.pacote_servico (
  id_pacote_servico INT PRIMARY KEY AUTO_INCREMENT,
  id_pacote INT NOT NULL,
  id_servico INT NOT NULL,
  FOREIGN KEY (id_pacote) REFERENCES Pacote(id_pacote),
  FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

CREATE TABLE IF NOT EXISTS salaoMarcos.Reserva (
  id_reserva INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  id_profissional INT NOT NULL,
  id_servico INT NOT NULL,
  pacote_servico INT,
  data_reserva VARCHAR(10) NOT NULL,
  hora_reserva VARCHAR(5) NOT NULL,
  status VARCHAR(20),
  valor_pago DOUBLE,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY (id_profissional) REFERENCES Profissional(id_profissional),
  FOREIGN KEY (id_servico) REFERENCES Servico(id_servico),
  FOREIGN KEY (pacote_servico) REFERENCES pacote_servico(id_pacote_servico)
);