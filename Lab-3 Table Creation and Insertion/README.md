## INFSCI 1022 – Database Systems 
Lab 3 – Introduction to SQL
			

1.	Write SQL queries for each of the tasks using MySQL workbench.  
2.	You cannot use Workbench’s GUI to create database schemas and tables – you must write your own SQL statements.  
3.	Follow the underscore convention when naming your database schema, entities and attributes.

Consider the following two tables and their logical structures:

accounts

Field name	Primary Key	Data type	Is null?	Is auto-increment?
account_id	yes	INT	no	yes
balance	no	DOUBLE	no	no
type	no	VARCHAR(30)	no	no
date_opened	no	DATETIME	no	no
status	no	VARCHAR(30)	no	no

transactions

Field name	Primary Key	Data type	Is null?	Is auto-increment?
transaction_id	yes	INT	no	yes
date_time	no	DATETIME	no	no
amount	no	DOUBLE	no	no
remaining_balance	no	DOUBLE	no	no
account_id	no	INT	no	no

Task 1:  Create a database called bank using CREATE DATABASE statement.

Task 2: In database bank, create the following entity tables:
1.	account
2.	transactions
Each tables logical structure should correspond to the descriptions provided in this assignment.  Use CREATE TABLE statement.

Task 3: Use ALTER TABLE statement to create a foreign key connection account_id in transactions table to account_id in accounts table.

Task 4:  For each entity table, insert rows using INSERT statement:
1.	At least 3 accounts in the accounts table
2.	At least 5 transactions in the transactions table.  Make sure that at least one account has multiple transactions.
You can make up your own data for the INSERT statements.

Task 5:  Write a SELECT statement to display top 2 accounts sorted by date created in descending order.

Task 6:  Write a SELECT statement to display transactions for a particular account number (hard-code account number in the where clause).

Task 7:  Write an UPDATE statement to update all account statuses to ‘active’.

Task 8:  DELETE one row of your choice from transactions table.  Be careful – make sure to write a correct WHERE clause.

Save your SQL script as YourLastname_Assignment#.sql and submit through CourseWeb.  

