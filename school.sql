-- creating Database :
create database school;

-- using database:
use school;

-- Creating table :
create table students(
std_id int primary key,
std_first_name varchar(50),
std_last_name varchar(50),
std_age int ,
std_course varchar(50)
);

-- Inserting values in creatied table :
insert into students values
(220,'vikas','singh',21,'Btech'),
(221,'abhinav','sharma',23,'Bba'),
(222,'shubham','dubey',32,'Bsc'),
(223,'rahul','kumar',34,'Mba'),
(224,'vinay','shukla',23,'Bca');

select * from students;

-- Creating an other table course : 
create table course(
course_name varchar(50) primary key not null,
course_period int ,
course_id int ,
course_fees int not null
);

-- inserting values into course table:
insert into course values 
('DSA', 4, '2411',162000),
('DBMS', 4, '19811',162000),
('STATISTICS', 4, '12741',162000),
('JAVA', 4, '7811',162000),
('C++', 4, '17511',162000),
('OOPS', 4, '17511',162000);

select std_id,std_first_name,course_name,course_id from students,course ;

-- using :"SELECT" keyword without using "FROM" keyword:
select 444+11;
select now();

-- USING WHERE CLAUSE :
SELECT  * from students where std_age > 30;

-- USING OPERATORS WITH WHERE CLAUSE:
-- "=" OPERATOR:
SELECT std_id,std_first_name FROM students where std_id = '220';

-- ">" OPERATOR:
SELECT std_id,std_first_name FROM students where std_age > '30';

-- "<" OPERATOR:
SELECT std_id,std_first_name FROM students where std_age <'30';

-- "<=" OPERATOR:
SELECT std_id,std_first_name FROM students where std_age <='30';

-- ">=" OPERATOR:
SELECT std_id,std_first_name FROM students where std_age >='30';

-- "!=" OPERATOR:
SELECT std_id,std_first_name FROM students where std_age !='23';

create table teacher 
(teacher_id int primary key,
teacher_name varchar (50),
teacher_salary int,
teacher_department varchar (50),
teacher_address varchar(50),
teacher_contact_no int
);

insert into  teacher values 
(512,'Radha',54000,'SCSE','DELHI','7441'),
(513,'Mohan',84000,'ECE','Noida','8780'),
(514,'Nigam',44000,'ECE','ASSAM','7889'),
(515,'Suresh',94000,'MECH','CHENNAI','7841'),
(516,'Ramesh',24000,'CIVIL','GOA','7878'),
(517,'Amit',124000,'SCSE','DELHI','7840'),
(518,'Sumit',784000,'ECE','Noida','7041');


-- Using Between :
select * from teacher where teacher_salary BETWEEN 54000 and 84000;

-- uisng IN: used to reduce OR condition
select * from teacher where teacher_department in ( 'SCSE' ,'ECE');

-- uisng NOT IN: 
select * from teacher where teacher_department not in ( 'SCSE' ,'ECE');

-- uisng IS NULL :
select * from teacher where teacher_department IS NUll;

-- using AS:
select teacher_name as name , teacher_id as id from teacher
 where teacher_department in ( 'SCSE' ,'ECE');

-- using DISTINCT : 
select distinct teacher_address as address,teacher_department as departmetn from teacher ;

-- Pattern searching using LIKE keyword:
select * from students where std_first_name  like 'v%_s' ;

                                   -- sorting --
-- using order by:
select * from students order by std_age desc;
-- sorting uisng some expression:
select teacher_salary,teacher_salary*0.2 as bonus_salary from teacher order by teacher_salary desc;

-- using GROUP BY:
select teacher_department , count(teacher_department)  from teacher GROUP BY  teacher_department;

-- AVG():
select teacher_department , avg(teacher_salary)  from teacher GROUP BY teacher_department
having avg(teacher_salary) ;

-- MAX():
select teacher_department , max(teacher_salary)  from teacher GROUP BY teacher_department
having max(teacher_salary) ;

-- MIN():
select teacher_department , min(teacher_salary)  from teacher GROUP BY teacher_department
having min(teacher_salary) ;

-- combining group by and order by:
-- MIN():
select teacher_department , min(teacher_salary)  from teacher GROUP BY teacher_department
having min(teacher_salary) order by min(teacher_salary)  asc;

-- AVG():
select teacher_department , avg(teacher_salary)  from teacher GROUP BY teacher_department
having avg(teacher_salary)order by min(teacher_salary)  desc  ;


                               -- ALTER OPERATION --
-- ADD COLUMNS
alter table students add course_type varchar(20);
 select * from students;
 
 -- MODIFY COLUMNS
alter table students modify course_type char(20);
alter table students modify course_type varchar(20);
select * from students;

-- CHANGE COLUMNS
alter table students CHANGE COLUMN course_type  course_credit int;
select * from students;
 
 -- DROP COLUMNS
alter table course drop column course_type ;
select * from students;
desc students;
 
alter table course add course_type varchar(20) ;
alter table course add course_credit int ;
select * from course;


                           -- DATA MANIPULATION LANGUAGE --

-- INSERT
insert into course values ('PYTHON', '47851',745, '147854', '3', 'PR');
insert into course (course_name,course_fees, course_credit)values ('SQL','780240','3');
 
  
 -- UPDATE
 -- for safer update , run following query:
SET SQL_SAFE_UPDATES = 0;
update  course set course_credit = 4 where course_name = 'PYTHON';

-- BELOW QUERY UPDATE ALL THE ROWS OF COURSE TABLE:
update course set course_type = 'PP';
 
 
 
 --


