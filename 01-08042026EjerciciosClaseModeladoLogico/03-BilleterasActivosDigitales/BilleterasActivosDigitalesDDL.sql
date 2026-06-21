CREATE TABLE inversor (
        id_inversor INTEGER NOT NULL,
        nombre_inversor VARCHAR(50) NOT NULL,
        correo VARCHAR(50) NOT NULL,
        seguridad VARCHAR(50),
        CONSTRAINT inversor_pk PRIMARY KEY (id_inversor)
);

CREATE TABLE billetera (
        direccion_alfanumerica VARCHAR(50) NOT NULL,
        nombre_personalizado VARCHAR(50) NOT NULL,
        red_blockchain VARCHAR(50) NOT NULL,
        id_inversor INTEGER,
        CONSTRAINT billetera_pk PRIMARY KEY (direccion_alfanumerica),
        CONSTRAINT billetera_fk_inversor FOREIGN KEY (id_inversor) REFERENCES inversor(id_inversor) ON DELETE CASCADE
);

CREATE TABLE criptomoneda (
        id_crypto INTEGER NOT NULL,
        nombre_criptomoneda VARCHAR(50) NOT NULL,
        sigla VARCHAR(10) NOT NULL,
        precio_mercado NUMERIC(10,2) NOT NULL,
        CONSTRAINT criptomoneda_pk PRIMARY KEY (id_crypto)
);

CREATE TABLE billetera_criptomoneda (
        direccion_alfanumerica VARCHAR(50),
        id_crypto INTEGER,
        CONSTRAINT billetera_criptomoneda_pk PRIMARY KEY (direccion_alfanumerica, id_crypto),
        CONSTRAINT billetera_criptomoneda_fk_billetera FOREIGN KEY (direccion_alfanumerica) REFERENCES billetera(direccion_alfanumerica) ON DELETE CASCADE,
        CONSTRAINT billetera_criptomoneda_fk_criptomoneda FOREIGN KEY (id_crypto) REFERENCES criptomoneda(id_crypto) ON DELETE CASCADE
);