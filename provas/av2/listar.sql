SELECT * FROM Usuario;

SELECT * FROM Usuario WHERE id_usuario = 1;

SELECT * FROM Quarto;

SELECT * FROM Quarto WHERE id_quarto = 1;

SELECT * FROM Vaga;

SELECT * FROM Vaga WHERE id_vaga = 1;

SELECT * FROM ObservacaoVaga;

SELECT * FROM ObservacaoVaga WHERE id_observacaoVaga = 1;

SELECT v.id_vaga, ov.descricao
FROM vaga_observacaoVaga vov
JOIN Vaga v ON v.id_vaga = vov.id_vaga
JOIN ObservacaoVaga ov ON ov.id_observacaoVaga = vov.id_observacaoVaga;

SELECT ov.descricao
FROM vaga_observacaoVaga vov
JOIN ObservacaoVaga ov ON ov.id_observacaoVaga = vov.id_observacaoVaga
WHERE vov.id_vaga = 1;

SELECT * FROM Reserva;

SELECT * FROM Reserva WHERE id_reserva = 1;

SELECT rv.id_reserva, v.identificador
FROM reserva_vaga rv
JOIN Vaga v ON v.id_vaga = rv.id_vaga;

SELECT v.identificador
FROM reserva_vaga rv
JOIN Vaga v ON v.id_vaga = rv.id_vaga
WHERE rv.id_reserva = 1;

SELECT * FROM Pagamento;

SELECT * FROM Pagamento WHERE id_reserva = 1;