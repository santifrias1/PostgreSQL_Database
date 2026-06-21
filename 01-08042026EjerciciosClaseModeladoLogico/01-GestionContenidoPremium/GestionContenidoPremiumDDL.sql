CREATE TABLE creador (
    	id_creador INTEGER NOT NULL,
    	usuario_artistico VARCHAR(50) NOT NULL,
    	nombre_legal VARCHAR(50) NOT NULL,
    	pais VARCHAR(50),
    	biografia TEXT,
    	CONSTRAINT creador_pk PRIMARY KEY (id_creador)
);

CREATE TABLE contenido (
    	id_contenido INTEGER NOT NULL,
    	titulo VARCHAR(50),
    	tipo_archivo VARCHAR(50) NOT NULL,
    	fecha_publicacion DATE NOT NULL,
    	privacidad VARCHAR(50),
    	id_creador INTEGER,
    	CONSTRAINT contenido_pk PRIMARY KEY (id_contenido),
    	CONSTRAINT contenido_fk_creador FOREIGN KEY (id_creador) REFERENCES creador(id_creador) ON DELETE CASCADE
);

CREATE TABLE nivel_suscripcion (
    	id_nivel INTEGER NOT NULL,
    	nombre_nivel VARCHAR(50) NOT NULL,
    	precio_mensual NUMERIC(10,2) NOT NULL,
    	id_creador INTEGER,
    	CONSTRAINT nivel_pk PRIMARY KEY (id_nivel),
    	CONSTRAINT nivel_suscripcion_fk_creador FOREIGN KEY (id_creador) REFERENCES creador(id_creador) ON DELETE CASCADE
);