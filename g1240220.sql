create database g1240220;
use g1240220;

create table student (
	id int primary key,
    name varchar(10),
    age int check (age>18),
    marks int check (marks<100),
    grade varchar(3),
    city varchar(10) default "Karachi"
);

insert into student (id, name , age , marks , grade , city) values
(101, "Yazdan" , 20 , 90, "A+", default),
(102, "Ramish" , 30 , 80, "A", "Lahore"),
(103, "Atif" , 21 , 70, "B", "Sukkar"),
(104, "Haroon" , 40 , 60, "C", default),
(105, "Abdullah" , 42 , 50, "D", "Faisalabad");
insert into student (id, name , age , marks , grade , city) values
(106, "Daniyal" , 35 , 90, "A+", default),
(107, "Uzair" , 32 , 80, "A", "Lahore");

select * from student;

-- Clausing
-- where kahan
select * from student;
select * from student where city = "Lahore";
select * from student where marks = 90;
select * from student where city in ("Lahore", "karachi", "sukkar");
select * from student where age = 20;
select * from student where age between 20 and 30;
select * from student;
select * from student where age>40 or grade = "B";
select * from student where marks = 90 and grade = "A+"; 

-- update
-- safe enable
set sql_safe_updates=0;
update student
set marks = 60 where marks = 55;
-- safe disable
set sql_safe_updates=1;

set sql_safe_updates=0;

update student
set marks = marks + 5;

select * from student;

-- agreeget Function

select min(marks) from student;
select max(marks) from student;
select min(name) from student;
select max(name) from student;
select count(city) from student;
select avg(marks) from student;

select * from student;