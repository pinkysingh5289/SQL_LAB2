use bankingdb;

create view vw_customers
as
select cust_id,firstname,lastname,email from customers;

select * from vw_customers;

insert into vw_customers values(13,'akass','ss','akass@gmail.com');

select * from customers;

update vw_customers set lastname = 'si' where cust_id = 13;

delete from vw_customers where cust_id = 13;

create view vw_cust as
select cust_id,concat(firstname,' ',lastname) as Namess,email,phone,AccountCreationDate from customers;

insert into vw_cust values(13,'Prerna Singh','Prerna@gmail.com',7812,default);


insert into vw_cust(email,phone,AccountCreationDate) values(13,'Prerna@gmail.com',7812,default);
                           
update vw_cust set email = 'akash@gmail.com' where cust_id = 12;             
                           		
select * from vw_cust;

set sql_safe_updates = 0;
delete from vw_cust where namess= 'akash singh';

alter view vw_cust as select cust_id,firstname,lastname,email from customers;

create or replace view vw_cust 
as
select cust_id,firstname,lastname,email,phone from customers;

select * from transactions;

create or replace view vw_transaction
as
select TransactionType,sum(amount) as Total from transactions group by TransactionType;

insert into vw_transaction values('Deposit',21000);

select * from vw_transaction;

create or replace view vw_loans as select 
loanid,loanamount,interestrate,startdate from loans where loanid > 50005;

select * from vw_loans;

select * from loans;

select * from branches;
select * from accountbranches;

create or replace view vw_branches_AB
as
select branchname from AccountBranches
left join Branches  on accountBranches.branchid = branches.branchid;

insert into vw_branches_AB values('kalyan');
select * from vw_branches_AB;

create or replace view vw_loan_withcheck as select 
loanid,loanamount,interestrate,startdate from loans where loanid > 50005 
with check option;

select * from loans;

select * from vw_loan_withcheck;

insert into vw_loan_withcheck value(50000,200000,0.5,default);

insert into vw_loan_withcheck value(50011,200000,0.5,default);


