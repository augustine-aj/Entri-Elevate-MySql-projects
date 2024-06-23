# Entri-Elevate-MySql-projects

# Global Store Database Project

## Overview
The Global Store Database Project is designed to manage and analyze information about products and orders in a store. The project involves creating a relational database with two primary tables: Inventory (previously named Products) and Orders. This README provides detailed steps for setting up the database, populating it with sample data, and performing various SQL queries to extract meaningful insights

## Table of Contents
- Database Creation
- Table Structure
- Inventory Table
- Orders Table
- Data Insertion
- SQL Queries
- Retrieving Data
- Data Analysis
- Views
- Conclusion

## Database Creation
To create the database and selected it for use.

## Table Structure
### Inventory Table
The Inventory table stores detailed information about products.

### Orders Table
The Orders table keeps track of the orders made for the products.

## Data Insertion
Insert sample data into the Inventory and Orders tables.

## SQL Queries
### Retrieving Data
- Select all records from the Inventory table.
- Select all records from the Orders table.

### Data Analysis
- Select distinct categories from the Inventory table.
- Select the top 5 most expensive products.
- Select product names with a quantity greater than 10.
- Calculate the total inventory price.
- Count the number of products in each category.
- Select names and prices of products with zero quantity.

## Views
- Create a view for expensive products (products with a price above the average price).
- Join Inventory and Orders to get product names and order quantities.

## Conclusion
This project provides a comprehensive overview of setting up and managing a relational database for a global store. It demonstrates various SQL operations including table creation, data insertion, and complex queries for data retrieval and analysis. This database can be expanded and modified to suit additional business needs and use cases.


# Library Management System

## Overview of the Project
The Library Management System project is designed to manage library operations efficiently. It involves creating a structured relational database using MySQL to store and manage information about branches, employees, books, customers, book issues, and book returns. The system supports various queries to retrieve and analyze data, aiding in the management and decision-making processes.

## Key Features
- Branch Management: Maintain information about different library branches, including their managers and contact details.
- Employee Management: Keep track of library employees, their positions, salaries, and assigned branches.
- Book Management: Store details about books, including their titles, categories, rental prices, availability status, authors, and publishers.
- Customer Management: Manage customer information, including registration details.
- Issue and Return Tracking: Track the issuance and return of books by customers.
## Insights Gained
1. Relational Database Design: The project reinforced the importance of designing a well-structured relational database. It showcased how to establish relationships between different entities using foreign keys and how these relationships help maintain data integrity.

2. Data Insertion and Querying: The process of inserting sample data and writing queries provided practical experience in handling real-world scenarios. This included retrieving specific information, performing joins across multiple tables, and using aggregate functions for data analysis.

3. Error Handling and Debugging: Encountering and resolving foreign key constraint errors and other issues during the database setup highlighted the importance of meticulous debugging and understanding the constraints applied to the database schema.

4. Optimization: Learning to write optimized SQL queries to fetch data efficiently without redundant computations or excessive resource usage.

## Conclusion
The Library Management System project successfully demonstrates the fundamental principles of relational database management systems (RDBMS). By creating a comprehensive database schema, inserting sample data, and running various queries, the project highlights the practical applications of SQL in managing and analyzing library operations.

This project provides a solid foundation for further enhancements, such as adding more detailed tracking of book reservations, implementing user authentication and authorization, and developing a user-friendly interface for librarians and customers. Overall, it serves as a valuable exercise in database management and SQL query development.
