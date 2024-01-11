create database Bookshop;

use Bookshop;

create table costumer(
costumer_id int PRIMARY key,
costumer_name VARCHAR(40),
costumer_email VARCHAR(50),
costumer_phn_no int(50),
costumer_address varchar(100)
);

insert into costumer values
(121,'Vikas','singhvikas@gmail.com','933','Noida');

select * from costumer;

create table Order (
order_id int PRIMARY key,
order_name VARCHAR(40),
delivery_date date,
cust_id int,
foreign key(cust_id) references costumer(costumer)id)
);


