
use employemanagement;
select * from employeeinfo;

alter table employeeinfo 
add dep_id int ;

set sql_safe_updates = 0;
update employeeinfo set dep_id = 1 where empl_id = 1;
update employeeinfo set dep_id = 1 where empl_id = 6;
update employeeinfo set dep_id = 2 where empl_id = 2;
update employeeinfo set dep_id = 2 where empl_id = 4;
update employeeinfo set dep_id = 3 where empl_id = 3;
update employeeinfo set dep_id = 3 where empl_id = 5;


create table departments(
dep_id int unique,
department varchar(20)
);
insert into departments values(1,'DA'),(2,'HR'),(3,'IT');

insert into departments values(4,'sales');
select * from departments;

select e.emp_name, d.department from departments d left join employeeinfo e on d.dep_id = e.dep_id;