SELECT u.alias, p.instruccion, ia.nombre_comercial
FROM usuario AS u
INNER JOIN prompt AS p
ON u.id_usuario = p.id_usuario
INNER JOIN modelo_ia AS ia
ON p.id_modelo = ia.id_modelo;