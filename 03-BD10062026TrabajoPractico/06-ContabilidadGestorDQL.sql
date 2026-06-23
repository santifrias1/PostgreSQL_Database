SELECT COUNT(numero_orden) AS total_pedidos, 
       SUM(monto_total) AS facturacion_total
FROM pedido;