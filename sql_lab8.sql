use bankingdb;
select * from customers;
select * from accounts;

update accounts 
set accounttype = 'Savings Account' 
where cust_id = 3;



select cust_id,firstname,lastname,phone from customers 
where cust_id in (select cust_id from Accounts where balance = 200000);

select cust_id,firstname,lastname,email from customers 
where cust_id > (select cust_id from Accounts where Account_id = 12003);

select cust_id,firstname,lastname,email from customers 
where cust_id >= (select cust_id from Accounts where Account_id = 12003);

select cust_id,firstname,lastname,email from customers 
where cust_id < (select cust_id from Accounts where Account_id = 12003);

select cust_id,firstname,lastname,email from customers 
where cust_id <= (select cust_id from Accounts where Account_id = 12003);

select cust_id,firstname,lastname,email from customers 
where cust_id <> (select cust_id from Accounts where Account_id = 12003);

set @sid =3;
select firstname,lastname,email from customers where cust_id = (select cust_id from accounts where cust_id = @sid);

select cust_id,firstname,lastname,email from customers 
where cust_id = (select max(cust_id) from Accounts );

select cust_id,firstname,lastname from customers 
where cust_id = (select min(cust_id) from accounts);


select cust_id,firstname,lastname,email from customers 
where cust_id > Any (select cust_id from Accounts where AccountType = 'Savings Account');

select cust_id,firstname,lastname,email from customers 
where cust_id < Any (select cust_id from Accounts where AccountType = 'Savings Account');

select cust_id,firstname,lastname,email from customers 
where cust_id > All (select cust_id from Accounts where AccountType = 'Savings Account');

select cust_id,firstname,lastname,email from customers 
where cust_id < All (select cust_id from Accounts where AccountType = 'Savings Account');

select cust_id,firstname,lastname,email from customers 
where cust_id = Any (select cust_id from Accounts where AccountType = 'Savings Account');

select cust_id,firstname,lastname,email from customers 
where cust_id = All (select cust_id from Accounts where AccountType = 'Savings Account');

