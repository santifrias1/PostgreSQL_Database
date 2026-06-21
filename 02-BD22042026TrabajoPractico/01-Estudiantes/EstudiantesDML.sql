INSERT INTO curso (id_curso, nombre_curso) VALUES
(1, 'Base de Datos'),
(2, 'Teoria de Sistemas'),
(3, 'Programacion I');

INSERT INTO direccion (codigo_postal, provincia, ciudad) VALUES
(4000, 'Tucuman', 'San Miguel de Tucuman'),
(1425, 'Buenos Aires', 'Buenos Aires'),
(5000, 'Cordoba', 'Cordoba');

INSERT INTO estudiante (id_estudiante, nombre_estudiante, apellido, seccion, calle, codigo_postal) VALUES
(1, 'Martina', 'Gomez', 'A', 'Av. Mate de Luna 1500', 4000),
(2, 'Lucas', 'Fernandez', 'B', 'Av. Santa Fe 2200', 1425),
(3, 'Sofia', 'Rodriguez', 'A', 'Av. Colon 800', 5000);

INSERT INTO cursada (id_estudiante, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3);