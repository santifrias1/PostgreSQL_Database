SELECT c.usuario_artistico, s.nombre_nivel, s.precio_mensual
FROM creador AS c
LEFT JOIN nivel_suscripcion AS s
ON c.id_creador = s.id_creador;