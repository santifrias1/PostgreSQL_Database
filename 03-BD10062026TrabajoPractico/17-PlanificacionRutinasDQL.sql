SELECT r.nombre_rutina, s.nombre_socio, e.nombre_entrenador
FROM rutina AS r
INNER JOIN socio AS s
ON r.id_socio = s.id_socio
INNER JOIN entrenador AS e
ON r.id_entrenador = e.id_entrenador;