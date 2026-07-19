select * from loan_data;
desc loan_data;

select * from employees;

-- 59980.000000
select avg(salary) from employees;

select * from employees where salary > 59980 limit 0,100;

ALTER TABLE employees
ADD COLUMN rank_salary VARCHAR(10);

UPDATE employees
SET rank_salary =
CASE
    WHEN salary > 60000 THEN 'high'
    WHEN salary = 60000 THEN 'medium'
    ELSE 'low'
END;

select emp_id,first_name,ast_name,
RANK()OVER(order by salary desc) as Salary_Rank
from employees;

select * from employees where salary > 
(select avg(salary) from employees);


select first_name,department from employees  where department 
=( 
select department from employees where first_name = "Amit" 
and last_name = "Sharma");

-- find second highest salary 
select max(salary) as highest_sal from  employees where salary < 
(select max(salary) from employees); 

select city,count(*) as total_emp from employees group by 
city order by total_emp desc;

select * from employees where month(join_date) between '01' and '03' ;

SELECT *
FROM employees e
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

select department,avg(salary) from employees group by department ;

create view emp_view as 
select * from employees
where salary>70000;

select * from emp_view;

use employemanagement;

select upper(emp_name)
from employeeinfo;

select concat('Pinky','    ','Singh') ;
select length('Singh');

select now();
 



