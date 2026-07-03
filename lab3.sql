use bankingdb;
select * from Accounts;

alter table Accounts 
drop time_of_order;

ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 100000);

select * from customers;
describe customers;

alter table customers
add constraint uq_email unique (email);
