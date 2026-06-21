INSERT INTO marca (id_marca, nombre_marca) VALUES
(1, 'Volkswagen'),
(2, 'Toyota'),
(3, 'Fiat');

INSERT INTO concesionario (id_concesionario, nombre_concesionario, domicilio, cuit) VALUES
(1, 'Norte Automotores', 'Av. Mate de Luna 1500', '30-12345678-9'),
(2, 'Sur Vehiculos SA', 'Av. Belgrano 800', '30-87654321-3'),
(3, 'Centro Autos SRL', 'Av. Sarmiento 2200', '30-11223344-5');

INSERT INTO caracteristica (id_caracteristica, nombre_caracteristica) VALUES
(1, 'Airbag conductor'),
(2, 'Aire acondicionado'),
(3, 'Pintura metalizada');

INSERT INTO servicio_oficial (id_servicio_oficial, nombre_servicio, domicilio, cuit, id_concesionario) VALUES
(1, 'Norte Automotores - Sucursal Este', 'Av. Roca 900', '30-99887766-1', 1),
(2, 'Sur Vehiculos - Sucursal Oeste', 'Av. Independencia 450', '30-55667788-2', 2),
(3, 'Centro Autos - Sucursal Norte', 'Av. Aconquija 300', '30-22334455-6', 3);

INSERT INTO modelo (id_modelo, nombre_modelo, precio, descuento, potencia, cilindrada, id_marca) VALUES
(1, 'Amarok', 45000000.00, 1500000.00, '258 HP', '3000cc', 1),
(2, 'Corolla', 32000000.00, NULL, '169 HP', '2000cc', 2),
(3, 'Cronos', 22000000.00, 800000.00, '120 HP', '1300cc', 3);

INSERT INTO vendedor (id_vendedor, nombre_vendedor, dni, domicilio, id_concesionario) VALUES
(1, 'Diego Alvarez', '32456789', 'Av. Las Heras 1800', 1),
(2, 'Camila Torres', '34567890', 'Av. 9 de Julio 600', 2),
(3, 'Nicolas Ramirez', '36789012', 'Av. Avellaneda 1100', 3);

INSERT INTO modelo_caracteristica (id_modelo, id_caracteristica, es_serie, precio_extra) VALUES
(1, 1, TRUE, NULL),
(2, 1, FALSE, 150000.00),
(3, 2, TRUE, NULL);

INSERT INTO automovil (numero_chasis, id_modelo, id_concesionario, id_servicio_oficial) VALUES
('9BWZZZ377VT004251', 1, 1, NULL),
('9BWZZZ377VT004252', 2, 2, 2),
('9BWZZZ377VT004253', 3, 3, NULL);

INSERT INTO venta (numero_venta, numero_chasis, precio_venta, modo_pago, fecha_entrega, matricula, de_stock, id_vendedor, id_servicio_oficial) VALUES
(1, '9BWZZZ377VT004251', 44500000.00, 'Financiera', '2026-06-20', 'AB123CD', TRUE, 1, NULL),
(2, '9BWZZZ377VT004252', 32150000.00, 'Contado', '2026-06-25', 'AC456DE', TRUE, NULL, 2),
(3, '9BWZZZ377VT004253', 21500000.00, 'Financiera', '2026-07-01', 'AD789FG', FALSE, 3, NULL);

INSERT INTO venta_extra (numero_venta, id_caracteristica, precio) VALUES
(1, 3, 350000.00),
(2, 1, 150000.00),
(3, 3, 280000.00);