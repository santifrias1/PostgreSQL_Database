SELECT e.nombre_ejercicio, re.orden_ejecucion, re.tiempo_descanso
FROM rutina AS r
INNER JOIN rutina_ejercicio AS re
ON r.id_rutina = re.id_rutina
INNER JOIN ejercicio AS e
ON re.id_ejercicio = e.id_ejercicio
WHERE r.nombre_rutina = 'Fuerza Piernas';