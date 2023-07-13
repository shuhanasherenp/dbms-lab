use dba;
delimiter //
create function getById1(n int)
returns int
deterministic
begin
	declare added int;
    set added = 0;
    select c into added from stud1 where id=n;
    return added;
end;
//
delimiter ;

select getById(3);

select *from stud1;
INSERT INTO stud1 VALUES (3,'vinu');
show databases;