INSERT INTO proveedor (id_proveedor, nombre_proveedor, calle, ciudad) VALUES
(1, 'Distribuidora Norte SA', 'Av. Mate de Luna 1500', 'San Miguel de Tucuman'),
(2, 'Mayorista Centro SRL', 'Av. Santa Fe 2200', 'Buenos Aires'),
(3, 'Insumos del Sur SA', 'Av. Colon 800', 'Cordoba');

INSERT INTO categoria (id_categoria, nombre_categoria, descuento) VALUES
(1, 'Electronica', 5.00),
(2, 'Hogar', 10.00),
(3, 'Indumentaria', 15.00);

INSERT INTO producto (id_producto, stock, precio_compra, precio_venta, id_proveedor, id_categoria) VALUES
(1, 50, 600000.00, 850000.00, 1, 1),
(2, 120, 8000.00, 12500.00, 2, 2),
(3, 200, 3500.00, 6000.00, 3, 3);