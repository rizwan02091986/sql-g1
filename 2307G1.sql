create database 2307G1;
use 2307G1;

create table student (
id int primary key,
name varchar (10),
age int,
city varchar (10),
marks int,
grade varchar(3)
);

select * from student;

insert into student (id , name , age , city , marks , grade) values
(101 , "Tabish" , 60 , "Karachi", 70 , "A"),
(102 , "Yazdan" , 50 , "Lahore" , 60 , "B"),
(103 , "Haroon" , 40 , "Peshawar" , 50 , "C"),
(104 , "Atif" , 30 , "Multan" , 40 , "D"),
(105 , "Haseeb" , 20 , "Karachi" , 90 , "A+1");
insert into student (id , name , age , city , marks , grade) values
(106 , "Farooq" , 60 , "Karachi", 70 , "A"),
(107 , "Hassan" , 50 , "Lahore" , 60 , "B");

select * from student;

-- Clausing
-- where kahan
select * from student;
select * from student where city = "Lahore";
select * from student where marks = 90;
select * from student where city in ("Lahore", "karachi", "multan");
select * from student where age = 20;
select * from student where age between 20 and 50;
select * from student;
select * from student where id = 104;
select * from student where marks = 90 or grade = "C";
select * from student where marks = 50 and grade = "C";
select distinct city from student;

select * from student;

-- update
-- safe enable
set sql_safe_updates=0;
update student
set grade = "A" where marks = 70;
-- safe disable
set sql_safe_updates=1;

set sql_safe_updates=0;

update student
set marks = marks + 5;