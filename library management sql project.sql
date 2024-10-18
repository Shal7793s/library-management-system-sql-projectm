-- create database

create database library;
use library;

-- create table "Branch"

create table Branch (
Branch_no int primary key,
Manager_id int,
Branch_address varchar(50),
Contact_no bigint);
desc Branch;

-- create table "Employee"

create table Employee (
Emp_id int primary key,
Emp_name varchar(50),
Position varchar(40),
Salary decimal(10,2),
Branch_no int,foreign key (Branch_no) references Branch(Branch_no));
desc Employee;

-- create table "Books"

create table Books (
ISBN varchar(30) primary key,
Book_title varchar(50),
Category varchar(50),
Rental_price decimal(10,2),
status enum('YES','NO'),
Author varchar(30),
Publisher varchar(30));
desc Books;

-- create table "Customer"

create table Customer (
Customer_id int primary key,
Customer_name varchar(50),
Customer_address varchar(40),
Reg_date date);
desc customer;

-- create table "Issuestatus"

create table Issuestatus (
Issue_id varchar(50) primary key,Issued_cust int,foreign key (Issued_cust) references Customer(Customer_id),
Issued_book_name varchar(30),
Issue_date date,
Isbn_book varchar(20),foreign key (Isbn_book) references Books(ISBN));
desc issuestatus;

-- Create table "Returnstatus"

create table Returnstatus (
Return_id int primary key,
Return_cust int,
Return_book_name varchar(50),
Return_date date,
Isbn_book2 varchar(50),foreign key (Isbn_book2) references Books(ISBN));
desc  returnstatus;

 -- INSERT VALUES
  
 insert into Branch(Branch_no,Manager_id,Branch_address,Contact_no)
 values
 (100,200,'main st',9895678945),
 (101,201,'soul dt',9798678501),
 (102,202,'jol st',8765432109),
 (103,203,'kum lk',7867543210),
 (104,204,'uyht ol',9243509871),
 (105,205,'shok kt',9182736750),
 (106,206,'spl mi',9656345670),
 (107,207,'okl ik',9657480921),
 (108,208,'yip kl',9876500213),
 (109,209,'omr ky',7956094323),
 (110,210,'ght ol',9205813678);
 
 select * from Branch;
 
 insert into Employee (Emp_id,Emp_name,Position,Salary,Branch_no)
values
(300,'John Shal','Manager',60000,100),
(301,'Arun Smith','Clerk', 45000,101),
(302,'Miya Johnson','Librarian',55000,102),
(303,'Emil Danil','Assistant',40000,103),
(304,'Sarath Babu','Assistant',42000,104),
(305,'Fathima Ramiz','Assistant',43000,105),
(306,'Manu Thomas','Manager', 62000,106),
(307,'Jerry Taylor','Clerk', 46000,107),
(308,'Daniel Mathew','Librarian',57000,108),
(309,'Liya Mary','Assistant',41000,109 ),
(310,'Christo Lee','Manager',65000,110);
select * from Employee;

INSERT INTO customer VALUES
(400,'Alice John','123 Main St', '2021-05-15'),
(401,'Babu Smith','456 Elm St', '2021-06-20'),
(402,'Simi mariya','789 Oak St', '2021-07-10'),
(403, 'Dave Wilson','567 Pine St', '2021-08-05'),
(404,'Arathy Baabu','890 Maple St', '2021-09-25'),
(405, 'Graison Thomas', '234 Cedar St', '2021-10-15'),
(406, 'Jeevan Taylor', '345 Walnut St', '2021-11-20'),
(407, 'Havy jeen', '456 Birch St', '2021-12-10'),
(408, 'Ivan Manu', '567 Oak St', '2022-01-05'),
(409, 'Jack Daniel', '678 Pine St', '2022-02-25');
select * from customer;

insert into books values
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', "Harry Potter and the Sorcerer's Stone", 'Fantasy', 7.00, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', "A People's History of the United States", 'History', 9.00, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1','New Revelations of the Americas', 'History', 6.50, 'yes', 'Charles C. Mann', 'Vintage Books');
select * from Books;

insert into issuestatus values
('IS101', 400, 'The Catcher in the Rye', '2023-05-01', '978-0-553-29698-2'),
('IS102', 401, 'The Da Vinci Code', '2023-05-02','978-0-7432-4722-4'),
('IS103', 402, 'Animal Farm','2023-05-03', '978-0-330-25864-8'),
('IS104', 403, 'The Alchemist', '2023-05-04', '978-0-307-37840-1'),
('IS105', 404, 'The Diary of a Young Girl', '2023-05-05', '978-0-375-41398-8'),
('IS106',405,'The Guns of August','2023-06-06','978-0-19-280551-1');
select * from issuestatus;

insert into returnstatus values
(500,407, 'Jane Eyre', '2023-06-06','978-0-141-44171-6'),
(501,401, 'The Da Vinci Code', '2023-06-07', '978-0-7432-4722-4'),
(502, 404, 'The Diary of a Young Girl', '2023-06-08', '978-0-375-41398-8'),
(503, 406, 'The Histories', '2023-06-09', '978-0-14-044930-3'),
(504,409, 'A Game of Thrones', '2023-06-10', '978-0-09-957807-9');
select * from returnstatus;


-- QUESTION 1

select book_title, category, rental_price from Books where Status = 'Yes';

-- QUESTION 2

select Emp_name,salary from Employee order by salary desc;

-- QUESTION 3

select issuestatus.Issued_book_name, customer.Customer_name from issuestatus inner join
customer on issuestatus.Issued_cust = customer.Customer_Id;

-- QUESTION 4

select category, COUNT(Book_title) from books group by Category;

-- QUESTION 5

select Emp_name,Position from employee where Salary >50000;

-- QUESTION 6

select customer_name from customer where Reg_date < '2022-01-01' and Customer_Id NOT IN
(select issued_cust from issuestatus);

-- QUESTION 7

select Branch_no, COUNT(*) AS Total_Employees
from Employee
GROUP BY Branch_no;

-- QUESTION 8

select customer.Customer_name from customer inner join issuestatus ON 
customer.Customer_Id = issuestatus.Issued_cust where issuestatus.Issue_date >= '2023-06-01' AND 
issuestatus.Issue_date <= '2023-06-30';

-- QUESTION 9

select book_title from books where Category='history';

-- QUESTION 10

SELECT branch_no, COUNT(emp_id) FROM employee GROUP BY branch_no HAVING COUNT(Emp_id) > 5;

-- QUESTION 11

select e.Emp_name, b.Branch_address
from Employee e
JOIN Branch b ON e.Branch_no = b.Branch_no
WHERE e.Position = 'Manager';  

-- QUESTION 12

select distinct c.Customer_name
from IssueStatus i
join Books b on i.Isbn_book = b.ISBN
join Customer c on i.Issued_cust = c.Customer_Id
where b.Rental_Price > 25;

 

