create table Cust1(id int,name varchar(20),City varchar(20));
DELIMITER //
create procedure city()
begin
select name,id from Cust1 where city="calicut";
end //
DELIMITER ;
insert into Cust1 values(1,"Ayaan","calicut");
insert into Cust1 values(2,"Emin","kochi");
insert into Cust1 values(3,"Lenin","calicut");
CALL city();


