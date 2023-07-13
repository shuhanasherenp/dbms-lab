use dba; 
delimiter //
Create procedure example(a int)
Begin
declare x int;
Set x=a;
Select x as ‘result’;
End //
DELIMITER ;
call example(10);