USE salaoMarcos;

INSERT INTO Cliente (nome, telefone, email, cartao_credito, saldo_credito) VALUES
('João Silva', '(011) 99999-8888', 'joao@gmail.com', '45689742365', 250.00),
('Maria Oliveira', '(021) 98888-7777', 'maria@gmail.com', '44652318745', 500.00);

INSERT INTO Profissional (nome, telefone, email, expediente) VALUES
('Carlos Souza', '(011) 98765-4321', 'carlos@gmail.com', '08:00-17:00'),
('Fernanda Lima', '(021) 97654-3210', 'fernanda@outlook.com', '10:00-19:00');

INSERT INTO Especialidade (nome_especialidade) VALUES
('Corte de Cabelo'),
('Coloração'),
('Manicure');

INSERT INTO especialidade_profissional (id_profissional, id_especialidade) VALUES
(1, 1), -- Carlos faz corte
(2, 2), -- Fernanda faz coloração
(2, 3); -- Fernanda também faz manicure

INSERT INTO Servico (id_especialidade, nome_servico, descricao, duracao, preco) VALUES
(1, 'Corte Masculino', 'Corte com máquina e tesoura', 30, 40.00),
(2, 'Coloração Completa', 'Tinta permanente com hidratação', 90, 150.00),
(3, 'Manicure Simples', 'Limpeza e esmaltação básica', 25, 30.00);

INSERT INTO Pacote (nome_pacote, descricao, preco_total) VALUES
('Pacote Beleza Total', 'Coloração + Manicure', 160.00);

INSERT INTO pacote_servico (id_pacote, id_servico) VALUES
(1, 2), -- Coloração
(1, 3); -- Manicure

INSERT INTO Reserva (id_cliente, id_profissional, id_servico, pacote_servico, data_reserva, hora_reserva, status, valor_pago) VALUES
(1, 1, 1, NULL, '2025-06-20', '10:00', 'Confirmada', 40.00),
(2, 2, 2, 1, '2025-06-21', '14:00', 'Confirmada', 160.00);

INSERT INTO Pagamento (id_reserva, valor, data_pagamento, status_pagamento) VALUES
(1, 40.00, '2025-06-20', 'Pago'),
(2, 160.00, '2025-06-21', 'Pago');

INSERT INTO FilaEspera (id_cliente, hora_entrada, status) VALUES
(5, '09:30', 'Aguardando'),
(9, '13:45', 'Aguardando');