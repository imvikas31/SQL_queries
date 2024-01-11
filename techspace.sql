create database techspace;
use techspace;

create table dept1(
emp_id int primary key not null,
emp_name varchar(50),
emp_role varchar(50)
);
insert into dept1 (emp_id,emp_name, emp_role) values
(1,'vikas', 'software engineer'),
(2,'Sunil', 'manager'),
(3,'Aakash', 'analyist'),
(4,'Raju', 'hr'),
(5,'Ayush', 'salesman');

SELECT * from dept1;

create table dept2(
emp_id int primary key not null,
emp_name varchar(50),
emp_role varchar(50)
);

insert into dept2 (emp_id,emp_name, emp_role) values
(1,'vikas', 'software engineer'),
(2,'Sunil', 'manager'),
(6,'Aakash', 'electrical enginer'),
(7,'Raju', 'developer'),
(8,'Saurabh', 'manager');


SELECT * from dept2;

-- Set operatios:
-- 1. List out all the employess in techspace?
-- UNION SET OPERATION
select * from dept1 union select * from dept2;

-- 2. List out all the employess in all the departments who works as salesman in techspace datebase?

select * from dept1 where emp_role = 'manager' union select * from dept2 where emp_role = 'manager';

-- 3. List out all the employess who works in both departments  in techspace datebase?
-- INTERSECETION SET OPERATION
select * from dept1 inner join dept2 using(emp_id);

-- 3. List out all the employess who works in  dept2 department only but mot in dept2  in techspace datebase?
-- MINUS SET OPERATION
SELECT dept1.emp_id,dept1.emp_name FROM dept1 LEFT JOIN dept2 USING(emp_id) WHERE dept2.emp_id IS NULL;










