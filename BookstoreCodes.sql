create database BookStore


create table Bookinfo
(
BookID int identity (10001,1) primary key,
BookName varchar(max),
BookDesc varchar(max),
Author char(30),
PublisherName varchar(30),
BookQuantity int,
DateAdded date,
Price money

)
-- Deleting table
drop table bookinfo

--Creating Stored Procedure

alter proc SP_addbook

		@BookName varchar(max),
		@BookDesc varchar(max),
		@Author char(30),
		@PublisherName varchar(30),
		@BookQuantity int,
		@DateAdded date,
		@Price money
		
AS

	insert into BookInfo (BookName,BookDesc,Author,PublisherName,BookQuantity,Dateadded, Price) values (@BookName, @BookDesc, @Author,@PublisherName, @BookQuantity,@DateAdded, @Price)
return



--Add command

INSERT INTO Bookinfo
(BookName,BookDesc, Author, PublisherName, BookQuantity, DateAdded, Price)
VALUES
('Attitude 101: What Every Leader Needs To Know', 'Attitude in Leadership', 'John C. Maxwell', 'Thomas Nelson', '10', '2017-11-11', '650');
INSERT INTO Bookinfo
(BookName,BookDesc, Author, PublisherName, BookQuantity, DateAdded, Price)
VALUES
('Ethics 101: What Every Leader Needs To Know', 'Ethics in Leadership', 'John C. Maxwell', 'Thomas Nelson', '10', '2017-11-11', '650');
INSERT INTO Bookinfo
(BookName,BookDesc, Author, PublisherName, BookQuantity, DateAdded, Price)
VALUES
('Teamwork 101: What Every Leader Needs To Know', 'Teamwork in Leadership', 'John C. Maxwell', 'Thomas Nelson', '10', '2017-11-10', '650');


INSERT INTO Bookinfo
(BookName,BookDesc, Author, PublisherName, BookQuantity, DateAdded, Price)
VALUES
('Harry Potter: Philosophers Stone', 'Harry Potter', 'J. K. Rowling, Barry Denenberg', ' Bloomsbury Publishing (UK)', '10', '2017-11-10', '1550');
INSERT INTO Bookinfo
(BookName,BookDesc, Author, PublisherName, BookQuantity, DateAdded, Price)
VALUES
('Harry Potter: The Chamber of Secrets', 'Harry Potter', 'J. K. Rowling, Barry Denenberg', ' Bloomsbury Publishing (UK)', '10', '2017-11-12', '1700');

--Delete Command

delete from bookinfo where BookId = '10001'

--Search Command

select * from bookinfo
select * from bookinfo where dateadded = '2017-11-10'
select * from bookinfo where BookID like '%4'
select * from bookinfo where bookdesc like '%leadership'

--Update Command

UPDATE Bookinfo
SET BookDesc = 'Ethics in Leadership', BookQuantity = '10'
WHERE BookID = 10002;

