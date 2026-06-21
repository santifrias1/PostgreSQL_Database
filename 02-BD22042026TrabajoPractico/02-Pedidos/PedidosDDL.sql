CREATE TABLE cliente (
    id_cliente INTEGER NOT NULL,
    nombre_cliente VARCHAR(50) NOT NULL,
    calle VARCHAR(50),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    CONSTRAINT cliente_pk PRIMARY KEY (id_cliente)
);

CREATE TABLE producto (
    id_producto INTEGER NOT NULL,
    nombre_producto VARCHAR(50) NOT NULL,
    precio_unitario NUMERIC(10,2) NOT NULL,
    CONSTRAINT producto_pk PRIMARY KEY (id_producto)
);

CREATE TABLE pedido (
    id_pedido INTEGER NOT NULL,
    id_cliente INTEGER,
    CONSTRAINT pedido_pk PRIMARY KEY (id_pedido),
    CONSTRAINT pedido_fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE
);

CREATE TABLE detalle_pedido (
    id_pedido INTEGER,
    id_producto INTEGER,
    cantidad INTEGER,
    CONSTRAINT detalle_pedido_pk PRIMARY KEY (id_pedido, id_producto),
    CONSTRAINT detalle_pedido_fk_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE,
    CONSTRAINT detalle_pedido_fk_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto) ON DELETE CASCADE
);