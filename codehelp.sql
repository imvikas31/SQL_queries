
use company;

create table manager(
manager_id int,
manager_first_name char(50),
manager_last_name char(50),
manager_salary INT,
foreign key (manager_id) references worker (worker_id) on delete set null
);


insert into manager values
(1001,'Mayankar', 'Mishra' , '44500');

insert into manager values
(1003,'Mayankar', 'Mishra' , '44500');

select * from worker;

select * from manager;

delete from worker where worker_id = 1003;

insert into manager values
(1004,'Mayankar', 'Mishra' , '44500'),
(1005,'Deepankar', 'Kuamr' , '45500'),
(1006,'Shubhankar', 'Shukla' , '47000'),
(1007,'Shalendar', 'Singh' , '48500'),
(1008,'Mayank', 'Soni' , '49500');

-- JOINS:
-- INNER JOIN:
select worker.* , manager.* from worker inner join manager on manager.manager_id = worker.worker_id;

-- LEFT-OUTER JOIN:
select worker.* , manager.* from worker left join manager on manager.manager_id = worker.worker_id;

-- RIGHT-OUTER JOIN:
select worker.* , manager.* from worker right join manager on manager.manager_id = worker.worker_id;

-- FULL JOIN:
--  EMULATED (LEFT JOIN UNION RIGHT JOIN)
select worker.* , manager.* from worker full join manager on manager.manager_id = worker.worker_id UNION select worker.* , manager.* from worker right join manager on manager.manager_id = worker.worker_id;

-- CROSS JOIN:
select worker.* , manager.* from worker CROSS join manager on manager.manager_id = worker.worker_id;






UPDATE worker SET worker_salary = 150000 WHERE worker_first_name = 'Vikas';
UPDATE worker SET worker_salary = 100000 WHERE worker_first_name = 'Saurabh';
UPDATE worker SET worker_salary = 100000 WHERE worker_first_name = 'Rakesh';
UPDATE worker SET worker_salary = 80000 WHERE worker_first_name = 'Sumit';			
UPDATE worker SET worker_salary = 80000 WHERE worker_first_name = 'Vipin';
UPDATE worker SET worker_salary = 25000 WHERE worker_first_name = 'Rakesh';
UPDATE worker SET worker_salary = 25000 WHERE worker_first_name = 'Suresh';
UPDATE worker SET worker_salary = 60000 WHERE worker_first_name = 'Alok';
UPDATE worker SET worker_salary = 60000 WHERE worker_first_name = 'Subh';
UPDATE worker SET worker_salary = 50000 WHERE worker_first_name = 'Amit';



-- using order by --->>
select worker_first_name,worker_last_name,worker_salary ,worker_id from worker ORDER BY worker_salary DESC ;

-- using order by for expression  --->>
select worker_id ,worker_first_name,worker_last_name, worker_salary*0.100 AS 'worker_bonus' from worker ORDER BY worker_bonus DESC;

select worker_id ,worker_first_name,worker_last_name, worker_salary*0.100 AS 'worker_bonus' from worker ORDER BY 1 DESC, 4 ASC;

-- using Distnct:
SELECT DISTINCT worker_department FROM worker;


-- using group by :
-- if we will use group by without agregation function thn it will exacatly work as Distinct:

SELECT worker_department, count(*) FROM worker GROUP BY worker_department;

-- using group by with Having clause :
SELECT worker_department, avg(worker_salary) FROM worker GROUP BY worker_department having avg(worker_salary) < '40000';

SELECT worker_department, avg(worker_salary) FROM worker GROUP BY worker_department having avg(worker_salary)  BETWEEN'40000' AND '60000';

SELECT worker_department, MAX(worker_salary) FROM worker GROUP BY worker_department having avg(worker_salary);

SELECT worker_department, SUM(worker_salary) FROM worker GROUP BY worker_department having avg(worker_salary) ;

-- Inner Join:
select w.* , m.* from worker as w inner join manager as m on w.worker_id = m.manager_id;
select * from student;













