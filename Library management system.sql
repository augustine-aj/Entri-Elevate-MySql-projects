create database Library;
use Library;

create table Branch(
	Branch_no int primary key,
    Manager_id int,
    Branch_address varchar(255),
    contact_no varchar(15)
    );

create table Employee(
	Emp_id int primary key,
    Emp_name varchar(50),
    Position varchar(50),
    salary decimal(10, 2),
	Branch_no int,
    foreign key(Branch_no) references Branch(Branch_no)
	);
    
create table Books(
	ISBN varchar(20) primary key,
    Books_title varchar(255),
    Category varchar(100),
    Rental_price decimal(10, 2),
    Status varchar(3) check(status in('Yes', 'No')) ,
    Author varchar(100),
    Publisher varchar(255)
	);
create table Customer(
	Customer_id int primary key,
    Customer_name varchar(100),
    Customer_address varchar(255),
    Reg_date date
    );
    
create table IssueStatus(
	Issue_id int primary key,
    Issued_cust int,
    Issued_book_name varchar(255),
    Issue_date date,
    ISBN_book varchar(20),
    foreign key (Issued_cust) references Customer(Customer_id),
    foreign key (ISBN_book) references Books(ISBN)
    );

create table ReturnStatus(
	Return_id int primary key,
    Return_cust int,
    Return_book_name varchar(255),
    Return_date date,
    ISBN_book2 varchar(20),
    foreign key (Return_cust) references Customer(Customer_id),
    foreign key (ISBN_book2) references Books(ISBN) 
	);

insert into Branch (Branch_no, Manager_id, Branch_address, Contact_no) values 
	(1, 101, '123 Main St, City A', '123-456-7890'),
	(2, 102, '456 Maple Ave, City B', '987-654-3210');

insert into Employee (Emp_id, Emp_name, Position, Salary, Branch_no) values
	(101, 'John Doe', 'Manager', 60000.00, 1),
	(102, 'Jane Smith', 'Manager', 65000.00, 2),
	(103, 'Alice Johnson', 'Assistant', 45000.00, 1),
	(104, 'Bob Brown', 'Clerk', 40000.00, 2);
    
insert into Books (ISBN, Books_title, Category, Rental_price, Status, Author, Publisher) values
	('978-3-16-148410-0', 'History of Time', 'History', 20.00, 'yes', 'Stephen Hawking', 'Penguin'),
	('978-0-14-044913-6', 'Crime and Punishment', 'Fiction', 25.00, 'no', 'Fyodor Dostoevsky', 'Penguin'),
	('978-1-56619-909-4', 'The Art of Computer Programming', 'Technology', 30.00, 'yes', 'Donald Knuth', 'Addison-Wesley'),
	('978-0-307-94764-3', 'Steve Jobs', 'Biography', 18.00, 'yes', 'Walter Isaacson', 'Simon & Schuster');
    
insert into Customer (Customer_id, Customer_name, Customer_address, Reg_date) values
	(1, 'Michael Scott', '1725 Slough Ave, Scranton', '2021-06-15'),
	(2, 'Jim Halpert', '42 Oak St, Scranton', '2021-08-22'),
	(3, 'Pam Beesly', '394 Maple St, Scranton', '2022-03-18'),
	(4, 'Dwight Schrute', '10 Schrute Farms, Scranton', '2022-01-05');
    
insert into IssueStatus (Issue_id, Issued_cust, Issued_book_name, Issue_date, ISBN_book) values 
	(1, 1, 'History of Time', '2023-06-05', '978-3-16-148410-0'),
	(2, 2, 'The Art of Computer Programming', '2023-06-10', '978-1-56619-909-4');

insert into ReturnStatus (Return_id, Return_cust, Return_book_name, Return_date, ISBN_book2) values
	(1, 1, 'History of Time', '2023-06-20', '978-3-16-148410-0'),
	(2, 2, 'The Art of Computer Programming', '2023-06-25', '978-1-56619-909-4');

select Books_title, Rental_price, Category from Books where status = 'Yes';

select Emp_name, salary from Employee order by salary desc;

select Books_title, customer_name from books 
join IssueStatus on books.ISBN = IssueStatus.ISBN_book 
join customer on IssueStatus.Issued_cust = Customer.customer_id;

select category, count(*) as Total_Books from Books group by category;

select Emp_name, Position from Employee where salary > 50000;

select Customer_name from Customer
left join IssueStatus on Customer.Customer_id = IssueStatus.Issued_cust
where Customer.Reg_date < '2022-01-01' and IssueStatus.Issue_id is not null;

select Branch_no, count(*) as Total_employees from Employee group by Branch_no;

select Customer_name from Customer 
left join IssueStatus on Customer.Customer_id = IssueStatus.Issued_cust 
where IssueStatus.Issue_date between '2023-06-01' and '2023-06-30';

select Books_title from Books where Books_title like '%History%';

select Branch_no, count(*) as Total_employees
from Employee group by Branch_no having count(*) > 5;

select Employee.Emp_name, Branch.Branch_address from Employee
join Branch on Employee.Emp_id = Branch.Manager_id;

select distinct Customer_name from Customer
join IssueStatus on Customer.Customer_id = IssueStatus.Issued_cust
join Books on IssueStatus.ISBN_book = Books.ISBN 
where books.Rental_price > 25;
 
