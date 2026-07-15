use bankingdb;
show indexes from customers;
desc customers;

create unique index idx_id on customers(cust_id);
drop index idx_id on customers;

show indexes from customers;

select * from transactions;
create unique index idx_type on transactions(transactiontype);
create index idx_type on transactions(transactiontype);
show indexes from transactions;
drop index idx_type on transactions;
select transactiontype from transactions;

alter table transactions
add unique index idx_am(Amount);
select * from transactions;
select Amount from transactions;

select * from accounts;
alter table accounts
add unique index idx_accountid(Account_id) ;
show indexes from accounts;
explain select * from accounts where account_id = 12001;
alter table accounts
alter index idx_accountid invisible ;

select * from customers;
explain select * from customers where firstname = 'r';


