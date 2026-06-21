CREATE TABLE restaurante (
    id_restaurante INTEGER NOT NULL,
    nombre_restaurante VARCHAR(50) NOT NULL,
    direccion_restaurante VARCHAR(50),
    especialidad TEXT,
    CONSTRAINT restaurante_pk PRIMARY KEY (id_restaurante)
);

CREATE TABLE plato (
    id_plato INTEGER NOT NULL,
    nombre_plato VARCHAR(50) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10,2) NOT NULL,
    id_restaurante INTEGER,
    CONSTRAINT plato_pk PRIMARY KEY (id_plato),
    CONSTRAINT plato_fk_restaurante FOREIGN KEY (id_restaurante) REFERENCES restaurante(id_restaurante) ON DELETE CASCADE 
);

CREATE TABLE cliente (
    id_cliente INTEGER NOT NULL,
    nombre_cliente VARCHAR(50) NOT NULL,
    telefono VARCHAR(50),
    direccion_cliente VARCHAR(50),
    CONSTRAINT cliente_pk PRIMARY KEY (id_cliente)
);

CREATE TABLE repartidor (
    id_repartidor INTEGER NOT NULL,
    nombre_repartidor VARCHAR(50) NOT NULL,
    vehiculo VARCHAR(50),
    licencia TEXT,
    CONSTRAINT repartidor_pk PRIMARY KEY (id_repartidor)
);

CREATE TABLE pedido (
    numero_orden INTEGER NOT NULL,
    fecha_pedido DATE NOT NULL,
    monto_total NUMERIC(10,2) NOT NULL,
    id_cliente INTEGER,
    id_restaurante INTEGER,
    id_repartidor INTEGER,
    CONSTRAINT pedido_pk PRIMARY KEY (numero_orden),
    CONSTRAINT pedido_fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE RESTRICT,
    CONSTRAINT pedido_fk_restaurante FOREIGN KEY (id_restaurante) REFERENCES restaurante(id_restaurante) ON DELETE RESTRICT,
    CONSTRAINT pedido_fk_repartidor FOREIGN KEY (id_repartidor) REFERENCES repartidor(id_repartidor) ON DELETE RESTRICT
);

CREATE TABLE detalle_pedido (
    numero_orden INTEGER,
    id_plato INTEGER,
    cantidad INTEGER,
    CONSTRAINT detalle_pedido_pk PRIMARY KEY (numero_orden, id_plato),
    CONSTRAINT detalle_pedido_fk_pedido FOREIGN KEY (numero_orden) REFERENCES pedido(numero_orden) ON DELETE CASCADE,
    CONSTRAINT detalle_pedido_fk_plato FOREIGN KEY (id_plato) REFERENCES plato(id_plato) ON DELETE RESTRICT
);