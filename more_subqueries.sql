use bankingdb;
select * from accounts;

# employee aerning more then avg salary
select * from accounts where balance > 
(select avg(balance) from accounts);

#department having highest avg salary
#here table name is inside parentheses - inside parentheses query act as table
select * from
(select AccountType ,avg(balance) as avg_balance 
from accounts
group by  accountType 
) as Type_A
order by avg_balance desc;

# find departments whose average salary is greater then 40000 and dsiplay them in descending order
select Accounttype,balance from (
select accounttype, avg(balance) > 100000 as avg_balance 
from accounts
group by accounttype
) as Type_A
order by  avg_balance desc;

select * from accounts;

select balance from accounts where cust_id = 5;

update accounts 
set balance = (select balance  from (select balance from accounts where cust_id = 5 ) as ty) 
where account_id = 12003;

#use this when two different tables have balance field 
update accounts 
set balance = (select balance from anytable where id=1)
where id = 102;
#find second highest balance from accounts
select   * from (
select AccountType , balance as sec_highest 
from accounts
)
as Type_A
order by sec_highest desc limit 1 offset 1;

select max(balance) from accounts where balance <(select max(Balance) from accounts);
select * from accounts order by balance desc ;