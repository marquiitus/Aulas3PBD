DELETE FROM Usuario
WHERE id_usuario = 1;

DELETE FROM Quarto
WHERE id_quarto = 1;

DELETE FROM Vaga
WHERE id_vaga = 1;

DELETE FROM ObservacaoVaga
WHERE id_observacaoVaga = 1;

DELETE FROM vaga_observacaoVaga
WHERE id_vaga = 1 AND id_observacaoVaga = 1;

DELETE FROM Reserva
WHERE id_reserva = 1;

DELETE FROM reserva_vaga
WHERE id_reserva = 1 AND id_vaga = 2;

DELETE FROM Pagamento
WHERE id_pagamento = 1;