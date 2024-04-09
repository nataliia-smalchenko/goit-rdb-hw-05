SELECT order_id, AVG(quantity) AS average_quantity
FROM (SELECT * FROM order_details WHERE quantity > 10) AS od
GROUP BY order_id;