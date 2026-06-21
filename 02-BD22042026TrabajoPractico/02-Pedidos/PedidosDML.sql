INSERT INTO cliente (id_cliente, nombre_cliente, calle, ciudad, provincia) VALUES
(1, 'Martina Gomez', 'Av. Mate de Luna 1500', 'San Miguel de Tucuman', 'Tucuman'),
(2, 'Lucas Fernandez', 'Av. Santa Fe 2200', 'Buenos Aires', 'Buenos Aires'),
(3, 'Sofia Rodriguez', 'Av. Colon 800', 'Cordoba', 'Cordoba');

INSERT INTO producto (id_producto, nombre_producto, precio_unitario) VALUES
(1, 'Notebook Lenovo', 850000.00),
(2, 'Mouse Logitech', 12500.00),
(3, 'Monitor Samsung 24', 220000.00);

INSERT INTO pedido (id_pedido, id_cliente) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);