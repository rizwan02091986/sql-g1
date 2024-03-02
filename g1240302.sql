create database g1240302;
use g1240302;

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
select * from student where age between 25 and 50 and grade = "A" or city in ("Peshwar", "lahore") and marks>60;
select * from student where name in ("Ramish", "Yazdan") and city in("karachi", "sukkar") and marks>=70 or age between 30 and 40;

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
select count(id) from student;

select * from student;

-- Group By

select city , name from student group by city , name;
select id , age, marks, grade from student group by id, age, marks, grade;

-- having clause

select name, age, marks from student group by name , age, marks having max(marks>=75);

-- order By

select city , name from student order by city , name;
select id , age, marks, grade from student order by id, age, marks, grade;
select * from student order by city asc;
select * from student order by city desc;

select * from student;

-- delete

delete from student where name = "Rizwan";

-- forign key
create table dept(
	id int primary key,
    name varchar(15)
);
create table teacher(
	id int primary key,
    name varchar(10),
    dept_id int,
    foreign key (dept_id) references dept (id)
    on update cascade
    on delete cascade
);

insert into dept values 
(501, "Engineering"),
(502, "Mdeical"),
(503, "Social");

insert into teacher values
(501, "Alex" , 501),
(502, "Max" , 502),
(503, "Rossy" , 503);


update dept set id = 504 where id = 503;

-- join inner
select * from dept inner join teacher on dept.id = teacher.id;

-- join left
select * from dept left join teacher on dept.id = teacher.id;

-- join right
select * from dept right join teacher on dept.id = teacher.id;

-- full join
select * from dept left join teacher on dept.id = teacher.id
union
select * from dept right join teacher on dept.id = teacher.id;

-- alter
select * from student;

alter table student
add column car varchar(10);

update student
set car = "bike" where id= 101;
update student
set car = "Honda" where id= 102;
update student
set car = "Bike" where id= 103;
update student
set car = "Honda" where id= 104;
update student
set car = "Bike" where id= 105;
update student
set car = "Honda" where id= 106;
update student
set car = "Bike" where id= 107;

alter table student change car bike varchar(10);

alter table student
drop car;

alter table student modify bike varchar(10);

select * from student;