use bankingdb;
select * from customers;
select firstname , upper(firstname) 
from customers; 
select firstname,lower(firstname) as lowercase
from customers;
select length(firstname) from customers;
select left(email,3) from customers ;
SELECT
CONCAT(firstname,' - ',lastname) AS FullName
FROM customers;
select round(1234.56,1) as rounded_value;
select ceil(1234.56) as ceil_value;
select floor(1234.56) as floor_value;
select abs(-2500) as abs_value; 
select mod(15,6) as mod_value;
select curdate();
select now();
select year(AccountCreationDate) as Year_of_account_creation from customers;
select cust_id,datediff(curdate(),'2005-02-21') from customers;
select cust_id,firstname,if(email is null,'NA','Applicable') as email_applicable from customers;
select firstname,ifnull(email,'Na') from customers;
select max(accountcreationdate) from customers;
select min(accountcreationdate) from customers;
SELECT
    FirstName,
    NULLIF(FirstName,'Priya') AS Result
FROM Customers;

select * from accounts;
select Account_id,accounttype, if(balance > 200000 ,'Premium',if(balance > 100000,'Standard','Basic') )  
from accounts;
SELECT SUM(Balance) as total_balance
FROM Accounts;
SELECT AVG(Balance) AS average_balance
FROM Accounts;
SELECT MAX(Balance) AS highest_balance
FROM Accounts;
SELECT MIN(Balance) AS lowest_balance
FROM Accounts;
select count(*) from accounts;
select accounttype,sum(balance) from accounts group by accounttype having sum(balance) > 500000;