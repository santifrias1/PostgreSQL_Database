SELECT p.numero_orden, p.monto_total, r.nombre_repartidor, r.vehiculo
FROM repartidor AS r
LEFT JOIN pedido AS p
ON r.id_repartidor = p.id_repartidor;