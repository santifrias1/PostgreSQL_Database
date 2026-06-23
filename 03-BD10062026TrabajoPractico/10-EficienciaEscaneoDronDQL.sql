SELECT numero_serie_dron, 
       AVG(nivel_anomalias_detectadas) AS promedio_anomalias
FROM vuelos
GROUP BY numero_serie_dron;