use bankingdb;
select * from customers;

select firstname,lastname from customers;

desc accounts;
select * from accounts;
select * from Accounts where AccountType= 'Savings Account';
select * from accounts order by balance desc;
select distinct accounttype from accounts;
SELECT * FROM Accounts ORDER BY Balance DESC LIMIT 3;
select Account_id,
       Balance ,
       case 
           when balance >= 250000 then  "Premium Account"
           when balance >= 150000 then "Standard Sccount"
           else 'Basic Account'
       end as AccountCategory
from  accounts;

select AccountType , Account_id,Balance, rank() over(order by balance desc) from accounts;


select * from transactions;
select * from transactions where amount between 5000 and 8000;
SELECT * FROM Transactions LIMIT 5 OFFSET 2;
select  transaction_id,transactiondate,amount,sum(amount) over(order by transactiondate ) from transactions;
SELECT Transaction_ID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;

select * from customers;
select * from customers where cust_id in(1,2,3);
select * from customers where email like '%s%';
select * from customers  order by firstname asc;
select * from customers where phone is null;
select * from customers where email is not null ;


