CREATE DATABASE EMPLOYEMANAGEMENT;
USE EMPLOYEMANAGEMENT;

CREATE TABLE EMPLOYEEINFO(
EMPL_Id INT PRIMARY KEY AUTO_INCREMENT,
EMP_NAME VARCHAR(20) NOT NULL,
EMAIL VARCHAR(40) UNIQUE,
SALARY INT CHECK(SALARY BETWEEN 15000 AND 80000),
CITY VARCHAR(20) CHECK(CITY IN("MUMBAI","PUNE","NAGPUR")),
STATE VARCHAR(20) DEFAULT "MAHARASHTRA",
CREATED_AT DATETIME DEFAULT CURRENT_TIMESTAMP
);

insert into employeeinfo(emp_name,email,salary,city,state)
values
('anjal','anjali@gmail.com',50000,'pune','maharashtra'),
('puja','puja@gmail.com',55000,'nagpur','maharashtra'),
('jyoti','jyoti@gmail.com',60000,'mumbai','maharashtra'),
('faiza','faiza@gmail.com',55000,'mumbai','maharashtra');

select  * from employeeinfo;

alter table employeeinfo
add department varchar(20) not null;

update employeeinfo set department ='HR' where empl_id in(6,8);

update employeeinfo set department ='IT' where empl_id in(7,9);

update employeeinfo set department = 'DA' where empl_id = 1;

set sql_safe_updates = 0;
update employeeinfo set empl_id = 2 where emp_name = 'anjal';

update employeeinfo set empl_id = 3 where emp_name = 'puja';

update employeeinfo set empl_id = 4 where emp_name = 'jyoti';

update employeeinfo set empl_id = 5 where emp_name = 'faiza';

update employeeinfo set emp_name = 'anjali' where empl_id = 2;

select  * from employeeinfo;

select sum(salary) as total,department from employeeinfo group by department order by department desc;

select emp_name,salary,avg(salary) over() as average_salary from employeeinfo;

select emp_name,salary,max(salary) over(order by salary desc) as Max_salary from employeeinfo;

select emp_name,salary,department,avg(salary) over(partition by department) as Avg_sal from employeeinfo;

select emp_name,salary,department,avg(salary) over(partition by department order by salary desc) as Avvg_sal from employeeinfo;

select emp_name,salary,row_number() over(order by salary desc ) as row_num from employeeinfo;

select emp_name,salary,rank()  over(order by salary desc) as rank_num from employeeinfo;

select emp_name,salary,department,empl_id,dense_rank() over (order by salary desc) as DenseRank from employeeinfo;