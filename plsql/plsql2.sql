create database sample1;
use sample1;
CREATE TABLE products6 (
    product_id INT AUTO_INCREMENT,
    product_name VARCHAR(100),
    product_price DECIMAL(10, 2),
    PRIMARY KEY (product_id)
);

INSERT INTO products6 (product_name, product_price) VALUES('Product A', 10.50),('Product B', 15.75),('Product C', 20.00);

-- Create the stored procedure 'GetProductPrice'
DELIMITER //

CREATE PROCEDURE GetProductPrice(IN productId INT, OUT price DECIMAL(10, 2))
BEGIN
    SELECT product_price INTO price FROM products6 WHERE product_id = productId;
END //

DELIMITER ;


CALL GetProductPrice(1, @productPrice);
SELECT @productPrice;