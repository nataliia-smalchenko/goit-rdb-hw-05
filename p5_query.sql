DROP FUNCTION IF EXISTS Division
DELIMITER //
CREATE FUNCTION Division(number1 FLOAT, number2 FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    RETURN number1/number2;
END //
DELIMITER ;

SELECT quantity, id, Division(quantity, id)
FROM order_details;
