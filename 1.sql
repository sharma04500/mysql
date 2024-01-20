select * from sakila.actor;
show databases;
use mysql;
show tables;
select * from component;
create database students;
use students;
create table details
(id varchar(10), 
name varchar(25), 
city varchar(20),
PINCODE char(6));
select id,name from details;
use mysql;

insert into details
values ( 1, 'Sharma', 'Nellore', 524004 );
select * from details;

insert into details (id, name, city)
values (1, 'sunny', 'Los Vegas' );

drop database students;
show tables;
drop table details;
create table details
(id varchar(10), 
name varchar(25), 
city varchar(20),
PINCODE char(6),
primary key(id));
select * from details;
insert into details (id, name)
values (1, 'sharma');
insert into details (id, name)
values (2, 'siva');
insert into details (id, name, pincode)
values (3, sharma, 524004)



