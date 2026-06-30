use bankingdb;
desc accountbranches;
ALTER TABLE Customers
MODIFY AccountCreationDate DATE DEFAULT (CURRENT_DATE);

ALTER TABLE  Customers
DROP COLUMN BirthDate;

alter table Customers
drop column lastname;

alter table Customers
rename column LN to lastname ;

update Customers
set lastname = 'm' 
where cust_id = 2;

insert into  Customers(cust_id,firstname,lastname,email,Phone) values(5,'r','p','rp@gmail.com','5480'),(6,'r','m','rm@gmail.com','5550')
,(7,'e','g','eg@gmail.com','5080'),(8,'h','j','hj@gmail.com','5600'),(9,'z','x','zx@gmail.com','4560'),(10,'b','k','bk@gmail.com','5790');
select * from Customers;

desc accounts;

insert into  accounts(Account_id ,cust_id,AccountType,Balance) values(12002,2,'Current Account','150000'),(12003,3,'Salary Account','200000'),
(12004,4,'Fixed Deposit Account','250000'),(12005,5,'Recurring Deposit Account','300000'),(12006,6,'Savings Account','250000'),
(12007,7,'Current Account','200000'),(12008,8,'Salary Account','150000'),(12009,9,'Fixed Deposit Account','100000'),
(12010,10,'Recurring Deposit Account','300000');

update  accounts
set cust_id = '1'
where Account_id = '12001';

select * from accounts;

insert into  Transactions(Transaction_id,Account_id,TransactionDate,Amount,TransactionType)
values(13001,12001,'2023-06-01',5000,'Deposit');

insert into  Transactions(Transaction_id,Account_id,TransactionDate,Amount,TransactionType)
values(13002,12002,'2023-06-03',4000,'Withdrawal'),(13003,12003,'2023-04-03',6000,'Transfer'),
(13004,12004,'2023-04-04',5400,'Interest');

insert into  Transactions(Transaction_id,Account_id,TransactionDate,Amount,TransactionType)
values(13005,12005,'2023-04-05',6500,'Deposit'),
(13006,12006,'2023-06-03',3000,'Withdrawal'),(13007,12007,'2023-07-03',6700,'Transfer'),
(13008,12008,'2023-04-13',6800,'Interest'),(13009,12009,'2023-10-03',10000,'Deposit'),
(13010,12010,'2023-12-12',12000,'Withdrawal');

select * from Transactions;
desc Transactions;

insert into  Branches(BranchID,BranchName ,BranchAddress,BranchPhone)
values(20001,'Kalyan','xyzkalyan','91001');

insert into  Branches(BranchID,BranchName ,BranchAddress,BranchPhone)
values(20002,'Thane','xyzThane','91002'),(20003,'Mulund','xyzMulund','91003'),
(20004,'Kalyan','xyzkalyan','91004'),(20005,'Mulund','xyzMulund','91005'),
(20006,'Thane','xyzThane','91006'),(20007,'Badlapur','xyzBadlapur','91007'),
(20008,'Kalyan','xyzkalyan','91008'),(20009,'Badlapur','xyzBadlapur','91009'),
(20010,'Thane','xyzThane','91010');

select * from accounts;
select * from Branches;

insert into AccountBranches(Account_id,BranchId,AssignmentDate) 
values(12006,20006,'2022-06-02'),(12007,20007,'2022-02-13'),(12008,20008,'2022-04-18'),
(12009,20009,'2022-08-09'),(12010,20010,'2022-01-20');

select * from AccountBranches;
 

 insert into Loans(LoanId,cust_id ,LoanAmount,interestrate,startdate,enddate ) 
 values(50001,1,100000,0.5,'2024-01-01','2024-12-12');

insert into Loans(LoanId,cust_id ,LoanAmount,interestrate,startdate,enddate ) 
 values(50002,2,100000,0.5,'2024-02-02','2025-02-02'),(50003,3,150000,1,'2024-01-01','2024-12-12'),
 (50004,4,200000,1.5,'2024-04-04','2025-04-04'),(50005,5,250000,2,'2024-01-01','2026-12-12'),
 (50006,6,200000,1.5,'2025-01-01','2025-12-12'),(50007,7,150000,1,'2025-05-05','2026-05-05'),
 (50008,8,100000,0.5,'2026-01-01','2026-12-12'),(50009,9,100000,0.5,'2024-01-01','2024-12-12'),
 (50010,10,200000,1.5,'2025-10-01','2026-10-01');
 
 select * from Loans;
 
 update Customers
set AccountCreationDate ='2021-12-18'
where cust_id = 10;

select * from Customers;