INSERT INTO direccion (codigo_postal, ciudad) VALUES
(4000, 'San Miguel de Tucuman'),
(1425, 'Buenos Aires'),
(5000, 'Cordoba');

INSERT INTO cliente (id_cliente, nombre_cliente, apellido, calle, codigo_postal) VALUES
(1, 'Martina', 'Gomez', 'Av. Mate de Luna 1500', 4000),
(2, 'Lucas', 'Fernandez', 'Av. Santa Fe 2200', 1425),
(3, 'Sofia', 'Rodriguez', 'Av. Colon 800', 5000);

INSERT INTO tipo_habitacion (id_tipo_habitacion, precio_noche) VALUES
(1, 45000.00),
(2, 65000.00),
(3, 90000.00);

INSERT INTO habitacion (id_habitacion, id_tipo_habitacion) VALUES
(101, 1),
(102, 2),
(103, 3);

INSERT INTO reserva (id_reserva, fecha_entrada, fecha_salida, importe_total, id_cliente, id_habitacion) VALUES
(1, '2026-07-10', '2026-07-15', 225000.00, 1, 101),
(2, '2026-07-12', '2026-07-14', 130000.00, 2, 102),
(3, '2026-07-20', '2026-07-25', 450000.00, 3, 103);