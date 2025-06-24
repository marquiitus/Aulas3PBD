UPDATE Usuario
SET telefone = '(11)99999-0000'
WHERE id_usuario = 1;

UPDATE Quarto
SET banheiro = 1
WHERE id_quarto = 1;

UPDATE Vaga
SET preco = 55.00
WHERE id_vaga = 1;

UPDATE ObservacaoVaga
SET descricao = 'Sol da manhã'
WHERE id_observacaoVaga = 1;

UPDATE Reserva
SET status = 'Cancelada'
WHERE id_reserva = 1;

UPDATE Pagamento
SET valor = 120.00
WHERE id_pagamento = 1;