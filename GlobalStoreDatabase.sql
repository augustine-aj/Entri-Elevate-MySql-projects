create database Global_Store_DB;
use Global_Store_DB;

create table Products(
	Product_id int auto_increment primary key,
    Name varchar(100),
    Price decimal(10, 2),
    Quantity int
    );

create table Orders(
	Order_id int auto_increment primary key,
    Product_id int,
    Quantity_order int,
    Order_date date,
    foreign key (Product_id) references Products(Product_id));
    
alter table Products
add column Category varchar(50) after Price;

rename table Products to Inventory;

insert into Products (name, Price, Quantity, Category) values
	('Product A', 10.00, 15, 'Category 1'),
	('Product B', 20.00, 10, 'Category 2'),
	('Product C', 30.00, 5, 'Category 3'),
	('Product D', 40.00, 0, 'Category 1'),
	('Product E', 50.00, 7, 'Category 2'),
	('Product F', 60.00, 20, 'Category 3'),
	('Product G', 70.00, 3, 'Category 1'),
	('Product H', 80.00, 8, 'Category 2'),
	('Product I', 90.00, 2, 'Category 3'),
	('Product J', 100.00, 1, 'Category 1');
    
insert into Orders (Product_id, Quantity_order, Order_date) values
	(1, 5, '2024-06-01'),
	(2, 3, '2024-06-02'),
	(3, 2, '2024-06-03'),
	(4, 1, '2024-06-04'),
	(5, 4, '2024-06-05');
    
select * from Inventory;

select * from Orders; 

select distinct category from Inventory;

select * from Inventory order by Price desc limit 5;

select name from Inventory where Quantity > 10;

select sum(Price * Quantity) as Total_Inventory_Price from Inventory;

select category, count(*) as Product_Count
from inventory group by category;

select name, Price from Inventory where Quantity = 0;

create view Expensive_products as 
select * from Inventory 
where Price >(select avg(price) from inventory);

select i.name, o.quantity_order
from inventory i
join orders o on i.product_id = o.product_id;
