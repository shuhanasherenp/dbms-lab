use dba;
CREATE TABLE products6 (
    product_id INT AUTO_INCREMENT,
    product_name VARCHAR(100),
    product_price DECIMAL(10, 2),
    PRIMARY KEY (product_id)
);

INSERT INTO products6 (product_name, product_price) VALUES
    ('Product A', 10.50),
    ('Product B', 15.75),
    ('Product C', 20.00);

-- Create the stored procedure 'GetProductPrice'
DELIMITER //

CREATE PROCEDURE GetProductPrice(IN productId INT, OUT price DECIMAL(10, 2))
BEGIN
    SELECT product_price INTO price FROM products6 WHERE product_id = productId;
END //

DELIMITER ;



CALL GetProductPrice(1, @productPrice);
SELECT @productPrice;


DELIMITER //

CREATE PROCEDURE GetProductName3(IN productId INT, OUT name1 VARCHAR(100))
BEGIN
    SELECT product_name INTO name1 FROM products WHERE product_id = productId;
END //

DELIMITER ;


CALL GetProductName3(2, @productName);
SELECT @productName;
show tables;
select *from products6;