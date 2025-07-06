# Nasir-Group_-SQL-Data-Quesries
🏢 Nasir Group Database Management System
This project is a complete relational database model for Nasir Group, a fictional multi-sector manufacturing company. It includes the design, creation, and population of essential business tables such as Departments, Employees, Products, Customers, Suppliers, Sales, and Orders using Microsoft SQL Server.

📁 Project Structure
Database Name: Nasir_Group

Main Tables:

Departments

Employees

Suppliers

Customers

Products

Sales

Orders

⚙️ Features Implemented
✅ Created relational database schema using SQL CREATE DATABASE and CREATE TABLE.

✅ Applied PRIMARY KEY, FOREIGN KEY, and CHECK constraints to maintain referential integrity.

✅ Inserted realistic sample data into all tables.

✅ Added a new column Bonus in Employees using ALTER TABLE.

✅ Updated employee bonuses using conditional logic via CASE WHEN.

✅ Performed meaningful SELECT queries with:

Filtering (WHERE, AND, OR)

Aggregation (e.g., AVG)

JOIN between related tables

UNION between queries

Aliases and ordering

📊 Sample SQL Queries
List employees with salary greater than 50,000.

Display all customers from Dhaka or Chattogram.

Retrieve all orders with either "Completed" or "Pending" status.

Show products with quantity in stock greater than average.

View employee names alongside their department names using JOIN.

🔗 Technologies Used
Database System: Microsoft SQL Server

Language: SQL (Standard SQL Syntax)

Tool: SQL Server Management Studio (SSMS)

🧑‍💻 How to Use
Clone this repository.

Open SQL Server Management Studio (SSMS).

Run CREATE DATABASE Nasir_Group; to initialize the database.

Copy and execute the schema and INSERT statements from the SQL script.

Run SELECT queries or add your own custom queries for practice.

📚 Learning Outcomes
Practical experience in relational database design.

Deepened understanding of normalization and referential integrity.

Enhanced skills in writing complex queries for business use cases.

Exposure to real-world database operations like ALTER, JOIN, and UNION.
