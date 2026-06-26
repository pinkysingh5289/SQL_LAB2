use management;
create table student (
Name Varchar(50),
course varchar(50),
rollno int
);
insert into student values("P@S" , "SQL" ,"5");
insert into student values("Q" , "python" ,"2"),("R" , "BI" ,"3"),("S" , "python" ,"4");
select * from student;
alter table student add age int;

drop table student;
drop database im;
SET SQL_SAFE_UPDATES = 0;



update student set age = 20 where rollno =1;
update student set age = 22 where rollno =3;
update student set age = 23 where rollno =4;
update student set age = 24 where rollno =5;
insert into student (name,course,rollno) values ('a','mern','6'),('b','fullstack','7'),('c','powerbi','8');
update student set age = 24 where rollno =6;
update student set age = 21 where rollno =7;
update student set age = 20 where rollno =8;

use pc;
truncate table class;

use im21;



select * from class;