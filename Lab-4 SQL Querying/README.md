## INFSCI 1022 – Database Systems 
Lab 4 – SQL JOINS AND AGGREGATE FUNCTIONS

Connect to an external database server with MySQL Workbench using the following settings and credentials:
1.	Connection name: INFSCI1022_REMOTE
2.	Hostname:  162.243.106.12
3.	Port: 3306
4.	Username: is1022
5.	Password: i$1022
Once you are connected, you should see two databases under the “SCHEMAS” section of your MySQL Workbench – world and sakila.  For this lab, we’ll be using the world database.

Task 1:  Reverse-engineer the world schema into an E-R model – this will help you visualize the relationship between tables.

Task 2:  Write a query that would produce a list of 5 cities with the largest populations in Afghanistan.  The resulting report should display the following data points (columns):
a.	City name
b.	Country name
c.	District
d.	Population
Hint:  to produce this query, you will have to join City and Country tables.  You will have to use aliases for the fields that you are selecting (both City and Country have fields called ‘Name’).  All columns displayed in the final report should be human-readable and relevant to the context (ex: Name in City table should probably become ‘City Name’).

Task 3:  Write a query that would tell you which country in the Middle East region has the lowest life expectancy.

Task 4:  Write a query that would tell you the combined Gross National Product (GNP) of all countries in the Caribbean.

Task 5:  Write a query that would produce a list of every country in Western Europe where the primary language is French.

Task 6:  Write a query that would produce a list of every city in Madagascar whose name begins with letter ‘A’
Submit Query file as YourLastName_Assignment#.sql
