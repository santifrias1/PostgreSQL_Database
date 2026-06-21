INSERT INTO inversor (id_inversor, nombre_inversor, correo, seguridad) VALUES
(1, 'Martina Gomez', 'martina.gomez@gmail.com', 'Avanzado'),
(2, 'Lucas Fernandez', 'lucas.fernandez@gmail.com', 'Basico'),
(3, 'Sofia Rodriguez', 'sofia.rodriguez@gmail.com', 'Avanzado');

INSERT INTO criptomoneda (id_crypto, nombre_criptomoneda, sigla, precio_mercado) VALUES
(1, 'Bitcoin', 'BTC', 68500.50),
(2, 'Ethereum', 'ETH', 3650.25),
(3, 'Solana', 'SOL', 142.80);

INSERT INTO billetera (direccion_alfanumerica, nombre_personalizado, red_blockchain, id_inversor) VALUES
('0x4f9a8b2c1d3e5f6a7b8c9d0e1f2a3b4c5d6e7f80', 'Billetera Principal', 'Ethereum', 1),
('bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh', 'Ahorro BTC', 'Bitcoin', 2),
('7vfCXTUXx5WJV5JADk17DUJ4ksgau7utNXGTuU2ssaR8', 'Trading Solana', 'Solana', 3);

INSERT INTO billetera_criptomoneda (direccion_alfanumerica, id_crypto) VALUES
('0x4f9a8b2c1d3e5f6a7b8c9d0e1f2a3b4c5d6e7f80', 2),
('bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh', 1),
('7vfCXTUXx5WJV5JADk17DUJ4ksgau7utNXGTuU2ssaR8', 3);