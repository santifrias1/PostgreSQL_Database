INSERT INTO restaurante (id_restaurante, nombre_restaurante, direccion_restaurante, especialidad) VALUES
(1, 'La Parrilla del Tano', 'Av. Corrientes 1234', 'Parrilla'),
(2, 'Sushi Club', 'Av. Cabildo 2580', 'Comida japonesa'),
(3, 'Pizzeria Don Pepe', 'Av. Rivadavia 4567', 'Pizzas');

INSERT INTO cliente (id_cliente, nombre_cliente, telefono, direccion_cliente) VALUES
(1, 'Martina Gomez', '1145678901', 'Av. Santa Fe 2200'),
(2, 'Lucas Fernandez', '1156789012', 'Av. Cordoba 3100'),
(3, 'Sofia Rodriguez', '1167890123', 'Av. Las Heras 1800');

INSERT INTO repartidor (id_repartidor, nombre_repartidor, vehiculo, licencia) VALUES
(1, 'Diego Alvarez', 'Moto', 'B2-12345678'),
(2, 'Camila Torres', 'Bicicleta', 'N/A'),
(3, 'Nicolas Ramirez', 'Moto', 'B2-87654321');

INSERT INTO plato (id_plato, nombre_plato, descripcion, precio, id_restaurante) VALUES
(1, 'Bife de chorizo', 'Con papas fritas', 9500.00, 1),
(2, 'Sushi mixto x20', 'Variedad de rolls', 8200.00, 2),
(3, 'Pizza muzzarella', 'Grande, masa fina', 6800.00, 3);

INSERT INTO pedido (numero_orden, fecha_pedido, monto_total, id_cliente, id_restaurante, id_repartidor) VALUES
(1, '2026-06-10', 9500.00, 1, 1, 1),
(2, '2026-06-12', 8200.00, 2, 2, 2),
(3, '2026-06-15', 6800.00, 3, 3, 3);

INSERT INTO detalle_pedido (numero_orden, id_plato, cantidad) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);