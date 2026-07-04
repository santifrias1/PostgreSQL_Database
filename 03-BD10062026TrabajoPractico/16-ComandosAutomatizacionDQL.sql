SELECT e.nombre_escena, d.tipo_dispositivo, ed.comando_ejecutar
FROM escena AS e
INNER JOIN escena_dispositivo AS ed
ON e.id_escena = ed.id_escena
INNER JOIN dispositivo AS d
ON ed.id_serie = d.id_serie;