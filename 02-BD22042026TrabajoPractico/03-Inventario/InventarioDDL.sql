CREATE TABLE proveedor (
    id_proveedor INTEGER NOT NULL,
    nombre_proveedor VARCHAR(50) NOT NULL,
    calle VARCHAR(50),
    ciudad VARCHAR(50),
    CONSTRAINT proveedor_pk PRIMARY KEY (id_proveedor)
);

CREATE TABLE categoria (
    id_categoria INTEGER NOT NULL,
    nombre_categoria VARCHAR(50) NOT NULL,
    descuento NUMERIC(10,2),
    CONSTRAINT categoria_pk PRIMARY KEY (id_categoria)
);

CREATE TABLE producto (
    id_producto INTEGER NOT NULL,
    stock INTEGER NOT NULL,
    precio_compra NUMERIC(10,2),
    precio_venta NUMERIC(10,2),
    id_proveedor INTEGER,
    id_categoria INTEGER,
    CONSTRAINT producto_pk PRIMARY KEY (id_producto),
    CONSTRAINT producto_fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor) ON DELETE RESTRICT,
    CONSTRAINT producto_fk_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) ON DELETE RESTRICT
);