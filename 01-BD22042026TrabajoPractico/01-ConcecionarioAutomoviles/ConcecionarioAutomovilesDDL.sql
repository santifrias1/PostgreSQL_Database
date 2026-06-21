CREATE TABLE marca (
    id_marca INTEGER NOT NULL,
    nombre_marca VARCHAR(50) NOT NULL,
    CONSTRAINT marca_pk PRIMARY KEY (id_marca)
);

CREATE TABLE concesionario (
    id_concesionario INTEGER NOT NULL,
    nombre_concesionario VARCHAR(50) NOT NULL,
    domicilio VARCHAR(50),
    cuit VARCHAR(50),
    CONSTRAINT concesionario_pk PRIMARY KEY (id_concesionario)
);

CREATE TABLE servicio_oficial (
    id_servicio_oficial INTEGER NOT NULL,
    nombre_servicio VARCHAR(50) NOT NULL,
    domicilio VARCHAR(50),
    cuit VARCHAR(50),
    id_concesionario INTEGER NOT NULL,
    CONSTRAINT servicio_oficial_pk PRIMARY KEY (id_servicio_oficial),
    CONSTRAINT servicio_oficial_fk_concesionario FOREIGN KEY (id_concesionario) REFERENCES concesionario(id_concesionario) ON DELETE CASCADE
);

CREATE TABLE modelo (
    id_modelo INTEGER NOT NULL,
    nombre_modelo VARCHAR(50) NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    descuento NUMERIC(10,2),
    potencia VARCHAR(50),
    cilindrada VARCHAR(50),
    id_marca INTEGER NOT NULL,
    CONSTRAINT modelo_pk PRIMARY KEY (id_modelo),
    CONSTRAINT modelo_fk_marca FOREIGN KEY (id_marca) REFERENCES marca(id_marca) ON DELETE RESTRICT
);

CREATE TABLE caracteristica (
    id_caracteristica INTEGER NOT NULL,
    nombre_caracteristica VARCHAR(50) NOT NULL,
    CONSTRAINT caracteristica_pk PRIMARY KEY (id_caracteristica)
);

CREATE TABLE modelo_caracteristica (
    id_modelo INTEGER,
    id_caracteristica INTEGER,
    es_serie BOOLEAN NOT NULL,
    precio_extra NUMERIC(10,2),
    CONSTRAINT modelo_caracteristica_pk PRIMARY KEY (id_modelo, id_caracteristica),
    CONSTRAINT modelo_caracteristica_fk_modelo FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo) ON DELETE CASCADE,
    CONSTRAINT modelo_caracteristica_fk_caracteristica FOREIGN KEY (id_caracteristica) REFERENCES caracteristica(id_caracteristica) ON DELETE CASCADE
);

CREATE TABLE vendedor (
    id_vendedor INTEGER NOT NULL,
    nombre_vendedor VARCHAR(50) NOT NULL,
    dni VARCHAR(50) NOT NULL,
    domicilio VARCHAR(50),
    id_concesionario INTEGER NOT NULL,
    CONSTRAINT vendedor_pk PRIMARY KEY (id_vendedor),
    CONSTRAINT vendedor_fk_concesionario FOREIGN KEY (id_concesionario) REFERENCES concesionario(id_concesionario) ON DELETE RESTRICT
);

CREATE TABLE automovil (
    numero_chasis VARCHAR(50) NOT NULL,
    id_modelo INTEGER NOT NULL,
    id_concesionario INTEGER NOT NULL,
    id_servicio_oficial INTEGER,
    CONSTRAINT automovil_pk PRIMARY KEY (numero_chasis),
    CONSTRAINT automovil_fk_modelo FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo) ON DELETE RESTRICT,
    CONSTRAINT automovil_fk_concesionario FOREIGN KEY (id_concesionario) REFERENCES concesionario(id_concesionario) ON DELETE RESTRICT,
    CONSTRAINT automovil_fk_servicio_oficial FOREIGN KEY (id_servicio_oficial) REFERENCES servicio_oficial(id_servicio_oficial) ON DELETE RESTRICT
);

CREATE TABLE venta (
    numero_venta INTEGER NOT NULL,
    numero_chasis VARCHAR(50) NOT NULL,
    precio_venta NUMERIC(10,2) NOT NULL,
    modo_pago VARCHAR(50) NOT NULL,
    fecha_entrega DATE,
    matricula VARCHAR(50),
    de_stock BOOLEAN NOT NULL,
    id_vendedor INTEGER,
    id_servicio_oficial INTEGER,
    CONSTRAINT venta_pk PRIMARY KEY (numero_venta),
    CONSTRAINT venta_fk_automovil FOREIGN KEY (numero_chasis) REFERENCES automovil(numero_chasis) ON DELETE RESTRICT,
    CONSTRAINT venta_fk_vendedor FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor) ON DELETE RESTRICT,
    CONSTRAINT venta_fk_servicio_oficial FOREIGN KEY (id_servicio_oficial) REFERENCES servicio_oficial(id_servicio_oficial) ON DELETE RESTRICT
);

CREATE TABLE venta_extra (
    numero_venta INTEGER,
    id_caracteristica INTEGER,
    precio NUMERIC(10,2) NOT NULL,
    CONSTRAINT venta_extra_pk PRIMARY KEY (numero_venta, id_caracteristica),
    CONSTRAINT venta_extra_fk_venta FOREIGN KEY (numero_venta) REFERENCES venta(numero_venta) ON DELETE CASCADE,
    CONSTRAINT venta_extra_fk_caracteristica FOREIGN KEY (id_caracteristica) REFERENCES caracteristica(id_caracteristica) ON DELETE RESTRICT
);