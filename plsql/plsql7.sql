DELIMITER //

CREATE PROCEDURE insertAddtable12(IN x INT,in y INT, OUT z int)
BEGIN
	insert into Sample1(a,b,c)values(x,y,x+y);
     select c into z from Sample1 where a = x and b=y;
END //

DELIMITER ;


select * from products6;

CALL insertAddtable12(9,9,@added);
SELECT @added;