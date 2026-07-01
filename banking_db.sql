use bankingdb;

select * from customers order by lastname;

select * from Accounts;
select * from Accounts order by Balance desc limit 5;

select * from Transactions;
select distinct(TransactionType) from Transactions ; 

select * from Transactions limit 4 offset 3;

drop table cust_backup;

select * from customers;
select * from Accounts;

select * from customers where lastname is null;
select * from customers where lastname is not null ;

select * from customers where lastname  like 's%';
select * from Transactions where TransactionType like '%r%' ;
select * from Transactions where TransactionType like '%t' ;
select * from Transactions where TransactionType like '_e%' ;

select * from Customers order by lastname desc;
select * from Transactions;

select * from customers limit 5 offset 2;
select count(lastname) from customers group by AccountCreationDate ;