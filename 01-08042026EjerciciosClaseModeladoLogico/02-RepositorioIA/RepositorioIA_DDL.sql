CREATE TABLE modelo_ia (
	id_modelo INTEGER NOT NULL,
	nombre_comercial VARCHAR(50) NOT NULL,
	empresa VARCHAR(50) NOT NULL,
	version VARCHAR(50) NOT NULL,
	CONSTRAINT modelo_pk PRIMARY KEY (id_modelo)
);

CREATE TABLE usuario (
	id_usuario INTEGER NOT NULL,
	alias VARCHAR(50) NOT NULL,
	correo VARCHAR(50) NOT NULL,
	fecha_registro DATE NOT NULL,
	CONSTRAINT usuario_pk PRIMARY KEY (id_usuario)
);

CREATE TABLE prompt (
	id_prompt INTEGER NOT NULL,
	instruccion TEXT,
	fecha_creacion DATE NOT NULL,
	calificacion INTEGER,
	id_usuario INTEGER,
	id_modelo INTEGER,
	CONSTRAINT prompt_pk PRIMARY KEY (id_prompt),
	CONSTRAINT prompt_fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
	CONSTRAINT prompt_fk_modelo FOREIGN KEY (id_modelo) REFERENCES modelo_ia(id_modelo) ON DELETE RESTRICT
);

CREATE TABLE etiqueta (
	id_etiqueta INTEGER NOT NULL,
	nombre_etiqueta VARCHAR(50) NOT NULL,
	descripcion TEXT,
	CONSTRAINT etiqueta_pk PRIMARY KEY (id_etiqueta)
);

CREATE TABLE prompt_etiqueta (
	id_prompt INTEGER,
	id_etiqueta INTEGER,
	CONSTRAINT prompt_etiqueta_pk PRIMARY KEY (id_prompt, id_etiqueta),
	CONSTRAINT prompt_etiqueta_fk_prompt FOREIGN KEY (id_prompt) REFERENCES prompt(id_prompt) ON DELETE CASCADE,
	CONSTRAINT prompt_etiqueta_fk_etiqueta FOREIGN KEY (id_etiqueta) REFERENCES etiqueta(id_etiqueta) ON DELETE CASCADE
);