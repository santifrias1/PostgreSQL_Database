CREATE TABLE entrenador (
    id_entrenador INTEGER NOT NULL,
    nombre_entrenador VARCHAR(50) NOT NULL,
    certificacion TEXT,
    CONSTRAINT entrenador_pk PRIMARY KEY (id_entrenador)
);

CREATE TABLE socio (
    id_socio INTEGER NOT NULL,
    nombre_socio VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    peso_corporal NUMERIC(10,2),
    id_entrenador INTEGER,
    CONSTRAINT socio_pk PRIMARY KEY (id_socio),
    CONSTRAINT socio_fk_entrenador FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador) ON DELETE RESTRICT
);

CREATE TABLE ejercicio (
    id_ejercicio INTEGER NOT NULL,
    nombre_ejercicio VARCHAR(50) NOT NULL,
    grupo_muscular TEXT,
    CONSTRAINT ejercicio_pk PRIMARY KEY (id_ejercicio)
);

CREATE TABLE rutina (
    id_rutina INTEGER NOT NULL,
    nombre_rutina VARCHAR(50) NOT NULL,
    objetivo TEXT,
    id_socio INTEGER,
    id_entrenador INTEGER,
    CONSTRAINT rutina_pk PRIMARY KEY (id_rutina),
    CONSTRAINT rutina_fk_socio FOREIGN KEY (id_socio) REFERENCES socio(id_socio) ON DELETE CASCADE,
    CONSTRAINT rutina_fk_entrenador FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador) ON DELETE RESTRICT
);

CREATE TABLE entrada_progreso (
    id_progreso INTEGER NOT NULL,
    fecha_progreso DATE,
    repeticiones INTEGER,
    peso_levantado INTEGER,
    id_socio INTEGER,
    id_ejercicio INTEGER,
    CONSTRAINT entrada_progreso_pk PRIMARY KEY (id_progreso),
    CONSTRAINT entrada_progreso_fk_socio FOREIGN KEY (id_socio) REFERENCES socio(id_socio) ON DELETE CASCADE,
    CONSTRAINT entrada_progreso_fk_ejercicio FOREIGN KEY (id_ejercicio) REFERENCES ejercicio(id_ejercicio) ON DELETE RESTRICT
);

CREATE TABLE rutina_ejercicio (
    id_rutina INTEGER,
    id_ejercicio INTEGER,
    orden_ejecucion TEXT,
    tiempo_descanso INTEGER,
    CONSTRAINT rutina_ejercicio_pk PRIMARY KEY (id_rutina, id_ejercicio),
    CONSTRAINT rutina_ejercicio_fk_rutina FOREIGN KEY (id_rutina) REFERENCES rutina(id_rutina) ON DELETE CASCADE,
    CONSTRAINT rutina_ejercicio_fk_ejercicio FOREIGN KEY (id_ejercicio) REFERENCES ejercicio(id_ejercicio) ON DELETE CASCADE
);