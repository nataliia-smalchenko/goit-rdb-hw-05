WITH od AS (
	SELECT * 
    FROM order_details 
    WHERE quantity > 10
)
SELECT order_id, AVG(quantity) AS average_quantity
FROM od
GROUP BY order_id;
