CREATE TABLE direccion (
    codigo_postal INTEGER NOT NULL,
    ciudad VARCHAR(50),
    CONSTRAINT direccion_pk PRIMARY KEY (codigo_postal)
);

CREATE TABLE cliente (
    id_cliente INTEGER NOT NULL,
    nombre_cliente VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    calle VARCHAR(50),
    codigo_postal INTEGER,
    CONSTRAINT cliente_pk PRIMARY KEY (id_cliente),
    CONSTRAINT cliente_fk_direccion FOREIGN KEY (codigo_postal) REFERENCES direccion(codigo_postal) ON DELETE RESTRICT
);

CREATE TABLE tipo_habitacion (
    id_tipo_habitacion INTEGER NOT NULL,
    precio_noche NUMERIC(10,2) NOT NULL,
    CONSTRAINT tipo_habitacion_pk PRIMARY KEY (id_tipo_habitacion)
);

CREATE TABLE habitacion (
    id_habitacion INTEGER NOT NULL,
    id_tipo_habitacion INTEGER,
    CONSTRAINT habitacion_pk PRIMARY KEY (id_habitacion),
    CONSTRAINT habitacion_fk_tipo_habitacion FOREIGN KEY (id_tipo_habitacion) REFERENCES tipo_habitacion(id_tipo_habitacion) ON DELETE CASCADE
);

CREATE TABLE reserva (
    id_reserva INTEGER NOT NULL,
    fecha_entrada DATE,
    fecha_salida DATE,
    importe_total NUMERIC(10,2),
    id_cliente INTEGER,
    id_habitacion INTEGER,
    CONSTRAINT reserva_pk PRIMARY KEY (id_reserva),
    CONSTRAINT reserva_fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE RESTRICT,
    CONSTRAINT reserva_fk_habitacion FOREIGN KEY (id_habitacion) REFERENCES habitacion(id_habitacion) ON DELETE RESTRICT
);