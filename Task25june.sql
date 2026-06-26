create database librarymanagement;
use librarymanagement;

create table Library(
LibraryId int primary key,
LibraryName Varchar(50),
Address Varchar(50)
);

create table Librarian(
LibrarianId int primary key,
Name varchar(50),
Email Varchar(50),
Phone Varchar(50),
LibraryId int,
foreign key (LibraryId) references Library(LibraryId) );

create table Members(
MemberId int primary key,
MemberName varchar(50),
MemberEmail varchar(50),
MemberPhone bigint,
MemberAddress varchar(50)
);

alter table Members add (
LibraryId int,
foreign key (LibraryId) references Library(LibraryId) );

create table Book(
BookID int primary key,
MemberId int,
BookName varchar(50),
PublicationYear Year,
Category Varchar(50),
foreign key (MemberId) references Members(MemberId) );

create table Author(
AuthorId int primary key,
BookId int,
AuthorName Varchar(50),
foreign key (BookId) references Book(BookId));




