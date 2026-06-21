INSERT INTO creador (id_creador, usuario_artistico, nombre_legal, pais, biografia) VALUES
(1, 'dj_carlos1', 'Carlos Méndez', 'Argentina', 'DJ desde 2018.'),
(2, 'tacosdonpepe', 'Pepe Gómez', 'México', 'Los mejores tacos de mexico.'),
(3, 'techtalks', 'Martín Ríos', 'Colombia', 'Divulgador de tecnología y programación.');

INSERT INTO contenido (id_contenido, titulo, tipo_archivo, fecha_publicacion, privacidad, id_creador) VALUES
(1, 'Urban Mix Vol.1', 'audio/mp3', '2024-01-15', 'publico', 1),
(2, 'Tacos con mucho chile', 'image/png', '2024-03-22', 'privado', 2),
(3, 'Intro a Docker', 'video/mp4', '2024-05-10', 'publico', 3);

INSERT INTO nivel_suscripcion (id_nivel, nombre_nivel, precio_mensual, id_creador) VALUES
(1, 'Bronce', 4.99, 1),
(2, 'Oro', 9.99, 2),
(3, 'VIP', 14.99, 3);