use sampledb;
create table book(
bookid int primary key,
title varchar(100) not null ,
author varchar(50) not null ,
category varchar(30) ,
price decimal(8,2) check (price > 0 ),
quantity int default 0 ,
publishedyear int ,
isbn  varchar(20) unique);
desc book;

create table members(
memberid int primary key,
membername varchar(50) not null,
email varchar(100) unique,
phone varchar(15) ,
city varchar(30) default 'mumbai',
joindate date not null );
desc members ;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Salary DECIMAL(10,2) CHECK (Salary >= 15000),
    Department VARCHAR(50) DEFAULT 'HR',
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);
desc employees;




INSERT INTO Book (bookid, title, author, category, price, quantity, publishedyear, isbn)
VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 'Fiction', 599.00, 15, 2019, '9781250301697'),
(2, 'Atomic Habits', 'James Clear', 'Self Help', 799.00, 20, 2018, '9780735211292'),
(3, 'Clean Code', 'Robert C. Martin', 'Technology', 1250.00, 10, 2008, '9780132350884'),
(4, 'The Alchemist', 'Paulo Coelho', 'Fiction', 450.00, 18, 1988, '9780061122415'),
(5, 'Deep Work', 'Cal Newport', 'Self Help', 899.00, 12, 2016, '9781455586691'),
(6, 'The Pragmatic Programmer', 'Andrew Hunt', 'Technology', 1450.00, 8, 1999, '9780201616224'),
(7, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 650.00, 25, 1997, '9781612681139'),
(8, 'Think and Grow Rich', 'Napoleon Hill', 'Finance', 550.00, 16, 1937, '9781585424337'),
(9, 'Ikigai', 'Hector Garcia', 'Self Help', 499.00, 14, 2016, '9780143130727'),
(10, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 699.00, 11, 1960, '9780060935467');

select * from book;
set sql_safe_updates = 0;
update book 
set price = 10/100*price + price 
where category = 'Technology';
select * from book where category = 'technology';

delete from book where bookid = 9;
delete from book where quantity = 0;
delete from members where joindate < '2022-02-01';
INSERT INTO Members (memberid, membername, email, phone, city, joindate)
VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', '9876543210', 'Mumbai', '2024-01-15'),
(2, 'Priya Mehta', 'priya.mehta@gmail.com', '9876543211', 'Pune', '2024-02-10'),
(3, 'Rohan Verma', 'rohan.verma@gmail.com', '9876543212', 'Delhi', '2024-03-05'),
(4, 'Sneha Patil', 'sneha.patil@gmail.com', '9876543213', 'Mumbai', '2024-04-18'),
(5, 'Karan Singh', 'karan.singh@gmail.com', '9876543214', 'Bengaluru', '2024-05-22'),
(6, 'Neha Joshi', 'neha.joshi@gmail.com', '9876543215', 'Hyderabad', '2024-06-12'),
(7, 'Aditya Kulkarni', 'aditya.kulkarni@gmail.com', '9876543216', 'Nagpur', '2024-07-08'),
(8, 'Ananya Gupta', 'ananya.gupta@gmail.com', '9876543217', 'Chennai', '2024-08-25');
select * from members;

ALTER TABLE Book
ADD Language VARCHAR(20);
select * from book;
ALTER TABLE Book
ADD Publisher VARCHAR(50);
ALTER TABLE Book
MODIFY Title VARCHAR(150) NOT NULL;
alter table book 
rename column quantity to stock;
alter table book
drop column language ;


rename table book to LibraryBooks;
rename table LibraryBooks to book;

select sum(stock) from book;
select avg(price) from book;

select max(price) from book;

select min(price) from book;

select category,count(stock) from book group by category having count(stock) > 2;
select sum(price) from book where category ='technology';

select  * from book where category = 'technology';

select * from book limit 5;

select * from book where publishedyear > 2020;

select * from book where title like  'a%';

select * from book where author like '%clear';

select * from book order by price desc limit 1 offset 1;

select count(*),category from book group by  category having count(*) > 1;

select * from book order by price desc limit 3;
select avg(price) from book  where publishedyear > 2020;

select category,avg(price) from book group by category having  avg(price) > 800;

SELECT
    ROW_NUMBER() OVER (ORDER BY price ASC) AS row_numbers,
    bookid,
    title,
    author,
    category,
    price
FROM Book;


SELECT
    ROW_NUMBER() OVER (PARTITION BY category ORDER BY price DESC) AS row_num,
    bookid,
    title,
    author,
    category,
    price
FROM book;

SELECT * FROM (SELECT bookid, title, author, category, price, ROW_NUMBER() 
OVER (PARTITION BY category ORDER BY price DESC) AS rn FROM book) AS RankedBooks WHERE rn = 1;

SELECT * FROM (SELECT bookid, title, author, category, price, ROW_NUMBER() 
OVER (PARTITION BY category ORDER BY price DESC) AS rn FROM book) AS RankedBooks WHERE rn = 2;

select price,category,row_number() over(partition by category order by price desc  ) as ranks from book  ;

SELECT * FROM (SELECT bookid, title, author, category, publishedyear, ROW_NUMBER() OVER (PARTITION BY category 
ORDER BY publishedyear DESC) AS rn FROM book) AS RankedBooks WHERE rn = 1;

SELECT bookid, title, author, category, price, RANK() 
OVER (ORDER BY price DESC) AS price_rank FROM book;

SELECT bookid, title, author, category, price, RANK() OVER 
(PARTITION BY category ORDER BY price DESC) AS category_rank FROM book;

SELECT * FROM (SELECT bookid, title, author, category, price, RANK() OVER (ORDER BY price DESC) 
AS price_rank FROM book) AS RankedBooks WHERE price_rank <= 3;

SELECT * FROM (SELECT bookid, title, author, category, price, RANK() OVER (PARTITION BY category ORDER BY price DESC) AS category_rank FROM book) 
AS RankedBooks WHERE category_rank = 1;

SELECT * FROM (SELECT bookid, title, author, category, price, RANK() 
OVER (PARTITION BY category ORDER BY price DESC) AS category_rank FROM book)
 AS RankedBooks WHERE category_rank = 2;
 
 SELECT bookid, title, author, category, price, DENSE_RANK() OVER (ORDER BY price DESC) AS price_rank FROM book;
 
 SELECT * FROM (SELECT bookid, title, author, category, price, DENSE_RANK() 
 OVER (ORDER BY price DESC) AS price_rank FROM book) 
 AS RankedBooks WHERE price_rank = 2;
 
 SELECT * FROM (SELECT bookid, title, author, category, price, DENSE_RANK()
 OVER (PARTITION BY category ORDER BY price DESC)
 AS category_rank FROM book) AS RankedBooks WHERE category_rank <= 2;
 
 SELECT bookid, title, price, RANK() OVER (ORDER BY price DESC) AS rank_no, DENSE_RANK() 
 OVER (ORDER BY price DESC) AS dense_rank_no FROM book;
 
 select title,category,price,rank() over(partition by category order  by price desc) from book limit 1 ;
 
 select title,price,dense_rank() over(partition by category order by price desc) from book limit 2;