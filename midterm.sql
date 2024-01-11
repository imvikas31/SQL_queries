CREATE DATABASE Hospital;
use Hospital;

create table patient
(
patient_name varchar(50) not null,
patient_id int primary key not null,
patient_age int,
patient_address varchar(100)
);

insert into patient values
('Vikas Singh',240, 21,'Delhi');

insert into patient values
('Ruchi Singh',245, 21,'Noida'),
('Mayank Kumar',241, 23,'Noida'),
('Abhinav Gupta',242, 54,'Gaziabaad'),
('Saurabh Singh',243, 21,'Assam'),
('Abhishek Sharma',244, 43,'Bihar');

select * from patient ;
select * from patient where patient_name = 'Vikas Singh' ;
select patient_age,patient_address from patient where patient_name = 'Vikas Singh';

-- creating a new table named as medical_history;
create table Doctor
(FOREIGN KEY (doctor_id) references patient(patient_id) on delete set null,
doctor_id int,
doctor_name varchar(50) PRIMARY key NOT NULL,
doctor_age int ,
doctor_salary int
);

select patient_name,patient_age ,doctor_id,doctor_name from patient, Doctor;

alter table patient  























