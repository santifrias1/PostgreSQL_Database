SELECT p.ubicacion_gps, c.nombre_cultivo, ph.fecha_inicio, ph.fecha_fin
FROM parcelas AS p
INNER JOIN plantaciones_historial AS ph
ON p.id_parcela = ph.id_parcela
INNER JOIN cultivos AS c
ON ph.id_cultivo = c.id_cultivo;