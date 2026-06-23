SELECT id_restaurante,
       AVG(precio) AS precio_promedio_plato
FROM plato
GROUP BY id_restaurante
HAVING AVG(precio) > 4500;