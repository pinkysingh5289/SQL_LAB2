use sampledb;

create table demo1(
id int,
name varchar(20)
);
create table demo2(
id int,
email varchar(30)
);

insert into demo1 values(1,'p'),(2,'s'),(4,'r'),(5,'e'),(6,'q');
insert into demo2 values(1,'p@gmail.com'),(2,'s@gmail.com'),(3,'d@gmail.com'),(7,'m@gmail.com'),(8,'b@gmail.com');

select name,email from demo1 left join demo2 on demo1.id = demo2.id;

select name,email from demo1 right join demo2 on demo1.id = demo2.id;

select * from demo1 natural join demo2;

alter table demo2
add city varchar(20);

alter table demo1
add city varchar(20);

select * from demo2;
set sql_safe_updates = 0;
update demo1 set city = "kalyan" where id = 1;
update demo2 set city = "vasai" where id = 8;    

select * from demo1 natural join demo2 ;

select * from demo1 cross join demo2;
select * from demo1,demo2;

use employemanagement;
select * from employeeinfo;
alter table employeeinfo add manager varchar(20) ;
alter table employeeinfo modify manager int;

update employeeinfo set manager = 1 where empl_id = 2;

update employeeinfo set manager = 1 where empl_id = 3;

update employeeinfo set manager = 2 where empl_id = 4;

update employeeinfo set manager = 3 where empl_id = 5;

insert into employeeinfo values(6,'muskan','muskan@gmail.com',65000,'nagpur','maharashtra',default,'DA',3);

desc employeeinfo;

select e.emp_name as employee,
	   e1.emp_name as manager
from employeeinfo e join employeeinfo e1 
on e.manager = e1.empl_id;

use bankingdb;
select * from customers;
alter table customers add new_custid int unique;
update customers set new_custid = 24 where cust_id = 12;
select e.firstname as customer,
       e1.new_custid as NewCustomer
from customers e join customers e1
on e.cust_id = e1.cust_id;


