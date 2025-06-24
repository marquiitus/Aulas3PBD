INSERT INTO Usuario (nome, documento, email, telefone, data_cadastro)
VALUES ('João Silva', '123.456.789-00', 'joao@email.com', '(11)91234-5678', '2025-06-01');

INSERT INTO Quarto (capacidade, banheiro)
VALUES (8, 0);

INSERT INTO Vaga (id_quarto, preco, identificador)
VALUES (1, 50.00, 'Beliche A - Superior');

INSERT INTO ObservacaoVaga (descricao)
VALUES ('Perto da janela');

INSERT INTO vaga_observacaoVaga (id_vaga, id_observacaoVaga)
VALUES (1, 1);

INSERT INTO Reserva (id_usuario, data_comeco, data_fim, data_reserva, status)
VALUES (1, '2025-06-20', '2025-06-22', '2025-06-10', 'Confirmada');

INSERT INTO reserva_vaga (id_reserva, id_vaga)
VALUES (1, 2);

INSERT INTO Pagamento (id_reserva, valor, data)
VALUES (1, 100.00, '2025-06-15');