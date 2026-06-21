CREATE TABLE curso (
    id_curso INTEGER NOT NULL,
    nombre_curso VARCHAR(50) NOT NULL,
    CONSTRAINT curso_pk PRIMARY KEY (id_curso)
);

CREATE TABLE direccion (
    codigo_postal INTEGER NOT NULL,
    provincia VARCHAR(50),
    ciudad VARCHAR(50),
    CONSTRAINT direccion_pk PRIMARY KEY (codigo_postal)
);

CREATE TABLE estudiante (
    id_estudiante INTEGER NOT NULL,
    nombre_estudiante VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    seccion TEXT,
    calle VARCHAR(50),
    codigo_postal INTEGER,
    CONSTRAINT estudiante_pk PRIMARY KEY (id_estudiante),
    CONSTRAINT estudiante_fk_direccion FOREIGN KEY (codigo_postal) REFERENCES direccion(codigo_postal) ON DELETE RESTRICT
);

CREATE TABLE cursada (
    id_estudiante INTEGER,
    id_curso INTEGER,
    CONSTRAINT cursada_pk PRIMARY KEY (id_estudiante, id_curso),
    CONSTRAINT cursada_fk_estudiante FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante) ON DELETE CASCADE,
    CONSTRAINT cursada_fk_curso FOREIGN KEY (id_curso) REFERENCES curso(id_curso) ON DELETE CASCADE
);