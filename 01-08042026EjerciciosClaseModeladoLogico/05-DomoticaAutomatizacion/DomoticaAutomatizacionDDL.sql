CREATE TABLE usuario (
    id_usuario INTEGER NOT NULL,
    nombre_usuario VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT usuario_pk PRIMARY KEY (id_usuario)
);

CREATE TABLE propiedad (
    id_propiedad INTEGER NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    tipo_vivienda TEXT,
    CONSTRAINT propiedad_pk PRIMARY KEY (id_propiedad)
);

CREATE TABLE dispositivo (
    id_serie INTEGER NOT NULL,
    marca VARCHAR(50) NOT NULL,
    tipo_dispositivo TEXT,
    id_propiedad INTEGER,
    CONSTRAINT serie_pk PRIMARY KEY (id_serie),
    CONSTRAINT serie_fk_propiedad FOREIGN KEY (id_propiedad) REFERENCES propiedad(id_propiedad) ON DELETE CASCADE
);

CREATE TABLE evento (
    id_evento INTEGER NOT NULL,
    fecha_evento DATE NOT NULL,
    hora_evento TIME NOT NULL,
    tipo_alerta VARCHAR(50),
    valor_medido VARCHAR(50),
    id_serie INTEGER,
    CONSTRAINT evento_pk PRIMARY KEY (id_evento),
    CONSTRAINT evento_fk_dispositivo FOREIGN KEY (id_serie) REFERENCES dispositivo(id_serie) ON DELETE CASCADE
);

CREATE TABLE escena (
    id_escena INTEGER NOT NULL,
    nombre_escena VARCHAR(50) NOT NULL,
    descripcion TEXT,
    CONSTRAINT escena_pk PRIMARY KEY (id_escena)
);

CREATE TABLE escena_dispositivo (
    id_escena INTEGER,
    id_serie INTEGER,
    comando_ejecutar VARCHAR(50),
    CONSTRAINT escena_dispositivo_pk PRIMARY KEY (id_escena, id_serie),
    CONSTRAINT escena_dispositivo_fk_escena FOREIGN KEY (id_escena) REFERENCES escena(id_escena) ON DELETE CASCADE,
    CONSTRAINT escena_dispositivo_fk_dispositivo FOREIGN KEY (id_serie) REFERENCES dispositivo(id_serie) ON DELETE CASCADE
);

CREATE TABLE usuario_propiedad (
    id_usuario INTEGER,
    id_propiedad INTEGER,
    rol VARCHAR(50) NOT NULL,
    fecha_invitacion DATE NOT NULL,
    CONSTRAINT usuario_propiedad_pk PRIMARY KEY (id_usuario, id_propiedad),
    CONSTRAINT usuario_propiedad_fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    CONSTRAINT usuario_propiedad_fk_propiedad FOREIGN KEY (id_propiedad) REFERENCES propiedad(id_propiedad) ON DELETE CASCADE
);