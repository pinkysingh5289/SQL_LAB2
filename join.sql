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


