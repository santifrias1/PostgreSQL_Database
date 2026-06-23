SELECT nombre_socio, peso_corporal
FROM socio
WHERE fecha_nacimiento < '1990-01-01' AND peso_corporal > 95;