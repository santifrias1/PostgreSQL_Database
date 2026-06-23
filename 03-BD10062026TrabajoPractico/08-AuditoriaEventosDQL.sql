SELECT id_serie, fecha_evento, hora_evento, valor_medido
FROM evento
WHERE tipo_alerta = 'Temperatura alta' OR tipo_alerta = 'Encendido';