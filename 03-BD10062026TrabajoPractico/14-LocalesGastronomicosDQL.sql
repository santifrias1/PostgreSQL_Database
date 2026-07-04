SELECT r.nombre_restaurante, r.especialidad
FROM restaurante AS r
LEFT JOIN pedido AS p
ON r.id_restaurante = p.id_restaurante
WHERE p.id_restaurante IS NULL;