SELECT v.*
FROM Vaga v
WHERE v.id_vaga NOT IN (
  SELECT rv.id_vaga
  FROM reserva_vaga rv
  JOIN Reserva r ON rv.id_reserva = r.id_reserva
  WHERE '2025-06-20' BETWEEN r.data_comeco AND r.data_fim
);

SELECT v.id_vaga, v.identificador, r.id_reserva, r.data_comeco, r.data_fim
FROM reserva_vaga rv
JOIN Vaga v ON rv.id_vaga = v.id_vaga
JOIN Reserva r ON rv.id_reserva = r.id_reserva
WHERE '2025-06-20' BETWEEN r.data_comeco AND r.data_fim;