SELECT c.usuario_artistico, c.pais, p.titulo, p.tipo_archivo
FROM creador AS c
INNER JOIN contenido AS p
ON c.id_creador = p.id_creador;