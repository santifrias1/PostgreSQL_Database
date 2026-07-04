INSERT INTO entrenador (id_entrenador, nombre_entrenador, certificacion) VALUES
(1, 'Gaston Lopez', 'ISSA Personal Trainer'),
(2, 'Florencia Diaz', 'NSCA-CSCS'),
(3, 'Matias Suarez', 'ACE Certified');

INSERT INTO ejercicio (id_ejercicio, nombre_ejercicio, grupo_muscular) VALUES
(1, 'Sentadilla', 'Piernas'),
(2, 'Press de banca', 'Pecho'),
(3, 'Peso muerto', 'Espalda');

INSERT INTO socio (id_socio, nombre_socio, fecha_nacimiento, peso_corporal, id_entrenador) VALUES
(1, 'Martina Gomez', '1989-04-12', 95.50, 1),
(2, 'Lucas Fernandez', '1975-09-23', 78.30, 2),
(3, 'Sofia Rodriguez', '2000-01-15', 58.00, 3);

INSERT INTO rutina (id_rutina, nombre_rutina, objetivo, id_socio, id_entrenador) VALUES
(1, 'Fuerza Piernas', 'Hipertrofia', 1, 1),
(2, 'Push Pull', 'Ganancia de masa muscular', 2, 2),
(3, 'Full Body', 'Resistencia y tonificacion', 3, 3);

INSERT INTO entrada_progreso (id_progreso, fecha_progreso, repeticiones, peso_levantado, id_socio, id_ejercicio) VALUES
(1, '2026-06-10', 10, 60, 1, 1),
(2, '2026-06-12', 8, 80, 2, 2),
(3, '2026-06-15', 12, 50, 3, 3);

INSERT INTO rutina_ejercicio (id_rutina, id_ejercicio, orden_ejecucion, tiempo_descanso) VALUES
(1, 1, 'Primero', 90),
(2, 2, 'Primero', 120),
(3, 3, 'Primero', 60);