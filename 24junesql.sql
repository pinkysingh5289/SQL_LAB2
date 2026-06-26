use management;
select * from student;
select count(*) from student;
SET SQL_SAFE_UPDATES = 0;
update student set name = 'AA' where rollno = 1;
delete from student where name = 'P@S';

select sum(age) from student;
select max(age) from student;
select min(age) from student;
select avg(age) from student;
select count(age) from student;
select sum(age),max(age),min(age),avg(age),count(age) from student;



select * from student;
select * from student where rollno = 1;
select * from student where rollno > 4;
select * from student where rollno < 5;
select * from student where rollno >=2;
select * from student where rollno <= 8;
select * from student where rollno <> 1;

select * from student where rollno = 2 and Name = "Q" ;
select * from student where rollno = 3 or Name = "S";
select * from student where not Name='R';

select * from student where rollno = 1 or rollno = 2 or rollno =3 or rollno = 4;
select * from student where rollno between 1 and 3;
select * from student where rollno in(1,2,3,4);




