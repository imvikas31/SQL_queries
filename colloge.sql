use college;

create table student (
std_id int primary key not null,
std_first_name char(50),
std_last_name char(50),
std_course char(50)
);

-- ways to insert data iinto the table:
-- (1) -->>

INSERT INTO  student
(std_id , std_first_name , std_last_name , std_course) values
(220,'Vikas', 'Singh','B.tech'),
(221,'Ramesh', 'Gupta','M.tech'),
(222,'Aakash', 'Singh','BCA'),
(223,'Saurabh', 'Kumar','MCA'),
(224,'Shreya', 'Soni','MBA'),
(225,'Aman', 'Tiwari','BSC'),
(226,'Aarush', 'Singh','BSC AG');

-- (2) -->>
INSERT INTO  student values
(227,'Suresh', 'Mishra','NCC','Galgotias University'),
(228,'Kamini', 'Roy','MLT','Galgotias University');

-- (3) -->>
INSERT INTO  student
(std_id , std_first_name ) values
(229,'Abhinav');

alter table student add std_college char(50) default 'Galgotias University' ;

alter table student add std_college char(50) default 'Galgotias University' ;
alter table student add std_pin int  default '1011220' ;


-- UPDATING  A value for a row in a  TABLE:
update student set std_first_name = 'Deepanshu' where std_id = '220';

-- UPDATING   value for multiple rows in a  TABLE:
update student set std_college = 'Sharda University';

set sql_safe_updates = 0;
update student set std_college = 'Amity University';

update student set std_pin = std_pin-1;

-- REPLACE:
replace into student (std_id,std_first_name,std_last_name) values
(220,'Akxhar','Patel');

replace into student (std_id,std_first_name)
select std_id,std_first_name
from student where std_id = 220;

 select * from student;









