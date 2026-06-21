INSERT INTO modelo_ia VALUES (1, 'ChatGPT', 'OpenAI', '4o');
INSERT INTO modelo_ia VALUES (2, 'Claude', 'Anthropic', 'Sonnet 4.5');
INSERT INTO modelo_ia VALUES (3, 'Gemini', 'Google', '2.0 Flash');

INSERT INTO usuario VALUES (1, 'santi_dev', 'santi@mail.com', '2024-01-15');
INSERT INTO usuario VALUES (2, 'maria_g', 'maria@mail.com', '2024-03-22');
INSERT INTO usuario VALUES (3, 'carlos_r', 'carlos@mail.com', '2025-06-01');

INSERT INTO prompt VALUES (1, 'Explicame qué es una red neuronal', '2025-06-01', 5, 1, 2);
INSERT INTO prompt VALUES (2, 'Generame un backend para una pagina web', '2025-06-02', 4, 1, 1);
INSERT INTO prompt VALUES (3, 'Resumí este texto en 3 puntos', '2025-06-03', 3, 2, 3);
INSERT INTO prompt VALUES (4, 'Traducí al inglés este párrafo', '2025-06-04', 4, 3, 2);

INSERT INTO etiqueta VALUES (1, 'educacion', 'Prompts con fines educativos');
INSERT INTO etiqueta VALUES (2, 'programacion', 'Relacionados con código y programacion');
INSERT INTO etiqueta VALUES (3, 'resumen', 'Prompts para sintetizar información');
INSERT INTO etiqueta VALUES (4, 'traduccion', 'Prompts de traducción de idiomas');

INSERT INTO prompt_etiqueta VALUES (1, 1);
INSERT INTO prompt_etiqueta VALUES (2, 2);
INSERT INTO prompt_etiqueta VALUES (3, 1);
INSERT INTO prompt_etiqueta VALUES (3, 3);
INSERT INTO prompt_etiqueta VALUES (4, 4);