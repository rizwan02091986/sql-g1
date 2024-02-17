create database G2;
use G2;

create table Teacher (
	id int primary key,
    name varchar(10),
    age int,
    grade varchar(3),
    marks int,
    city varchar(10)
);

select * from Teacher;

insert into Teacher (id , name , age , grade , marks , city) values
(101 , "Tabish" , 60 , "A" , 70 , "Karachi"),
(102 , "Yazdan" , 50 , "B" , 60 , "Lahore"),
(103 , "Haroon" , 40 , "C" , 50 , "Peshawar"),
(104 , "Atif" , 30 , "D" , 40 , "Multan"),
(105 , "Haseeb" , 20 , "A+1" , 90 , "Karachi");
insert into Teacher (id , name , age , grade , marks , city) values
(106 , "Ramsha" , 25 , "A" , 70 , "Karachi"),
(107 , "Ramish" , 35 , "B" , 60 , "Karachi");

select * from Teacher;

-- drop database osama;