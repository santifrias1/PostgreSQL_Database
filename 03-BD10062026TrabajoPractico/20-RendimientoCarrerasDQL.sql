SELECT a.nombre_atleta, c.nombre_carrera, c.distancia, ac.tiempo
FROM atleta AS a
INNER JOIN atleta_carrera AS ac
ON a.id_atleta = ac.id_atleta
INNER JOIN carrera AS c
ON ac.id_carrera = c.id_carrera;