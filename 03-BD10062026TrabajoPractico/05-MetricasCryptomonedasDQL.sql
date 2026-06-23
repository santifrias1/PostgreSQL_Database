SELECT MAX(precio_mercado) AS precio_maximo,
       MIN(precio_mercado) AS precio_minimo,
       AVG(precio_mercado) AS precio_promedio
FROM criptomoneda;