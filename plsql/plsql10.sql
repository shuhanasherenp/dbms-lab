create table addSample(id int auto_increment primary key,a int, b int, c int );
insert into addSample(a,b,c)values(2,3,5),(5,3,8),(2,7,9),(2,1,3);

delimiter //
create function getByIdToAdd(n int)
returns int
deterministic
begin
	declare added int;
    set added = 0;
    select c into added from  addSample where id=n;
    return added;
end;
//
delimiter ;

select getByIdToAdd(3);
select *from addSample;