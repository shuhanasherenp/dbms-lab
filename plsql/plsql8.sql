DELIMITER //
CREATE PROCEDURE simpleAddtwo()
BEGIN
	declare a int;
    declare b int;
    declare c int;
    set a = 10;
    set b = 20;
    set c = a+b;
    select a,b,c;
END //

DELIMITER ;

call simpleAddtwo();