create database dba;
use dba;
create table details(id int primary key,name varchar(20),address varchar(30), number int(10));
drop table details;
create table stud1(s_id int auto_increment key,name varchar(20));
select *from stud1;
insert into stud1 values(1,'anu');
select *from stud1;
insert into stud1 values(2,'vinu');
DELIMITER //

CREATE PROCEDURE getAllDetails()
BEGIN
	select * from stud1;
END //

DELIMITER ;

call getAllDetails();

create table cust(c_id int primary key,c_name varchar(20), city varchar(20));
INSERT INTO cust VALUES (1, 'FLEX', 'kannur');
INSERT INTO cust VALUES (2, 'anu', 'palakakd');
INSERT INTO cust VALUES (3, 'vinu', 'kozhikode');
INSERT INTO cust VALUES (4, 'manu', 'malappuram');
INSERT INTO cust VALUES (5, 'jaanu', 'wayanad');
select *from cust;
DELIMITER //

CREATE PROCEDURE getAllDetails8()
BEGIN
	select *from cust;
END //

DELIMITER ;

call getAllDetails8();