show databases;
use studentdetails;
show tables;
select * from sections;
create table sections(s_id int,s_name varchar(20),strength int);
insert into sections values(1,'computer science',20); 
insert into sections values(2,'portal',45); 
insert into sections values(3,'geeksforgeeks',60); 
insert into sections values(4,'geeksforgeeks',60); 
DELIMITER //
CREATE fUNCTION totalStrength()
RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE total INT;
   SET total = 0;
   SELECT SUM(strength) INTO total FROM sections;
   RETURN total;
END;
//
DELIMITER ;
SELECT totalStrength();

DELIMITER //
CREATE fUNCTION geeksforgeek()
RETURNS varchar(200)
DETERMINISTIC
BEGIN
   DECLARE gg varchar(200);
   SET gg = null;
   SELECT sum(strength) INTO gg FROM sections where s_name = "geeksforgeeks";
   RETURN gg;
END;
//
select totalCss();
select geeksforgeek();
