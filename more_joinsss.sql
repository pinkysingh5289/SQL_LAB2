use sampledb;

create table t1(
id int,
namess text
);
create table t2(
id int,
email varchar(20)
);
create table t3(
cid int,
cname varchar(20)
);
create table t4(
cid int,
tid int,
marks int);
  
  drop table t1;
  
insert into t1 values(1,'p'),(2,'r'),(3,'s'),(5,'m'),(6,'n');

insert into t2 values(1,'p@gmail.com'),(2,'r@gmail.com'),(3,'s@gmail.com'),(7,'a@gmail.com'),(8,'d@gmail.com');

insert into t3 values(1,'pinky'),(2,'ruchi'),(3,'sejal'),(9,'ram'),(16,'sufi');

insert into t4 values(1,101,90),(2,102,100),(3,103,78),(11,111,89),(12,112,98);

select * from t1;

select * from t2;

select * from t3;

select * from t4;

select * from (select a.namess,b.email,q.cname,d.marks from t1 a  join t2 b on a.id = b.id 
 join  t3 q on b.id = q.cid  join t4  d on q.cid = d.cid )as result;

select namess,email,cname,marks from t1 
join t2 on t1.id = t2.id
join t3 on t2.id = t3.cid
join t4 on t3.cid = t4.cid;

select namess,email,cname,marks from t1,t2,t3,t4 ;

select * from (select a.namess,b.email,q.cname,d.marks from t1 a  left join t2 b on a.id = b.id left 
 join  t3 q on b.id = q.cid left join t4  d on q.cid = d.cid )as result;

select * from (select a.namess,b.email,q.cname,d.marks from t1 a  right join t2 b on a.id = b.id right
 join  t3 q on b.id = q.cid right join t4  d on q.cid = d.cid )as result;
 
