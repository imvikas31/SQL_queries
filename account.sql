use company;

CREATE TABLE account(
account_id int not null primary key,
account_name char(50) unique,
account_balance INT,
CONSTRAINT account_balance_check check(account_balance >=1000)
);

insert into account (account_id,account_name,account_balance) values
(220,'A','10000'),
(221,'B','11000'),
(222,'C','12000'),
(223,'D','13000'),
(224,'E','14000'),
(225,'F','15000');

-- adding a new column:
ALTER TABLE account add account_bonus int not null default 500;

ALTER TABLE account add account_interest int not null default 500;


--  modify a column's(datatype/constraint):
alter table account modify Bonus Double;

-- change column name:
alter table account change column account_bonus Bonus int;
alter table account change column account_name Name CHAR(50);

-- change column can not be applied on account_balanace it has CHECK constraints in it
 -- alter table account change column account_balance Balance int ;



-- drop a column :
alter table account Drop column account_interest;

-- Rename - renames a table itself:
alter table account Rename to Account;



select * from account;

-- DESC - Describe table:
desc Account;






