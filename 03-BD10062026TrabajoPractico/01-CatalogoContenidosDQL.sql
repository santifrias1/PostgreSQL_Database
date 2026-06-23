SELECT titulo, fecha_publicacion
FROM contenido
WHERE privacidad = 'publico'
ORDER BY fecha_publicacion DESC;