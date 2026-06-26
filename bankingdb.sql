create database bankingdb;
use bankingdb;
create table customers (
cust_id int Primary key,
firstname varchar(50),
lastname varchar(50),
email varchar(100),
phone varchar(15),
AccountCreationDate date);

alter table customers add BirthDate Date;
alter table customers modify phone bigint;
alter table customers change column phone Phone bigint;
alter table customers rename to Customers;
alter table Customers add LN varchar(20) after firstname;

set sql_safe_updates = 0;
update  customers set BirthDate = '2005-02-21' where cust_id = '1';
update  customers set BirthDate = '1968-05-08' where cust_id = '2';

alter table customers 
drop column lastname;

alter table customers
add lastname varchar(20);

update  customers set lastname = 's' where cust_id = '1';

select * from Customers;
describe Customers;

create table Accounts (
Account_id int Primary key,
cust_id INT,
AccountType varchar(50),
Balance decimal(10,2),
foreign key (cust_id) references customers(cust_id)
);
create table Transactions(
Transaction_id int primary key,
Account_id int ,
TransactionDate DATE,
Amount Decimal(10,2),
TransactionType Varchar(10),
Foreign key (Account_id) references Accounts(Account_id) );

create table Branches(
BranchID int primary key,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15)
);

create table AccountBranches(
Account_id int,
BranchId int,
AssignmentDate date,
foreign key (Account_id) references Accounts(Account_id) ,
foreign key (BranchID) references Branches(BranchID)
);

create table Loans(
LoanId int primary key,
cust_id int,
LoanAmount decimal(10,2),
interestrate decimal(10,2),
startdate date,
enddate date,
foreign key (cust_id) references customers(cust_id)
);

describe customers;
describe Accounts;
describe Trannsactions;
describe Branches;
describe AccountBranches;
describe Loan;


insert into  customers values('2','a','s','as@gmail.com','9156','2026-06-24');                                                                       

select * from customers;
select * from Accounts;