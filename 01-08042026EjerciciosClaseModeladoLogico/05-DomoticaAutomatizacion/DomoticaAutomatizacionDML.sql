INSERT INTO usuario (id_usuario, nombre_usuario, email) VALUES
(1, 'Martina Gomez', 'martina.gomez@gmail.com'),
(2, 'Lucas Fernandez', 'lucas.fernandez@gmail.com'),
(3, 'Sofia Rodriguez', 'sofia.rodriguez@gmail.com');

INSERT INTO propiedad (id_propiedad, direccion, tipo_vivienda) VALUES
(1, 'Av. Santa Fe 2200', 'Departamento'),
(2, 'Av. Cordoba 3100', 'Casa'),
(3, 'Av. Las Heras 1800', 'PH');

INSERT INTO dispositivo (id_serie, marca, tipo_dispositivo, id_propiedad) VALUES
(1, 'Xiaomi', 'Camara de seguridad', 1),
(2, 'Philips Hue', 'Lampara inteligente', 2),
(3, 'Ecobee', 'Termostato', 3);

INSERT INTO evento (id_evento, fecha_evento, hora_evento, tipo_alerta, valor_medido, id_serie) VALUES
(1, '2026-06-10', '21:15:00', 'Movimiento detectado', NULL, 1),
(2, '2026-06-12', '19:30:00', 'Encendido', '80%', 2),
(3, '2026-06-15', '07:45:00', 'Temperatura alta', '28C', 3);

INSERT INTO escena (id_escena, nombre_escena, descripcion) VALUES
(1, 'Modo Noche', 'Apaga luces y activa camaras'),
(2, 'Modo Cine', 'Atenua luces del living'),
(3, 'Modo Ausente', 'Activa seguridad y baja temperatura');

INSERT INTO escena_dispositivo (id_escena, id_serie, comando_ejecutar) VALUES
(1, 1, 'ACTIVAR'),
(2, 2, 'ATENUAR'),
(3, 3, 'BAJAR_TEMP');

INSERT INTO usuario_propiedad (id_usuario, id_propiedad, rol, fecha_invitacion) VALUES
(1, 1, 'Propietario', '2026-01-10'),
(2, 2, 'Propietario', '2026-02-05'),
(3, 3, 'Invitado', '2026-03-20');