
select left('Database',4);
select Right('Database',5);
select Trim('Data base   ');
select Reverse('esabatad');
select substring('Hello',1,3);
select substring('Hello',1);
select replace('hello','e','d');

select round(555.45,-4);
select round(555.45,1);
select truncate(45.556,2);
select truncate(45.456,-1);
select floor(123);

use employemanagement;
select * from employeeinfo;
select empl_id,emp_name,salary , if(salary>55000,'Pass','Fail')
from employeeinfo;

select greatest(20,10,5);
select least(20,10,5);

select ifnull(10,2);
select nullif(15,5);
select coalesce(1,null,20,30);

select curdate();
select now();

select timestampdiff(year,'2005-02-21',curdate()) as Age;
select date_add(curdate(),interval 5 day);
select date_sub(curdate(),interval 5 day);
select date_sub(curdate(),interval 5 month);
select date_add(curdate(),interval 2 month);
select day('2026-07-02');
select month('2026-07-02');
select year('2026-06-03');
