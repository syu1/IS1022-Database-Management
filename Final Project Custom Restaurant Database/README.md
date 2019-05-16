## INFSCI 1022 Final Project
Spring 2017
The project is an individual effort unless cleared with the instructor.  The final project submission will include the following items:
•	A Microsoft Word document containing ALL sections described below (including all diagrams and queries). Use Times New Roman at a font size of 12.

•	An SQL script containing all database and table create and alter statements, as well as SQL queries written to fulfill this project’s requirements. Use comments in your SQL script to clearly outline each section. Your script MUST run.

•	A minimum of ten rows of sensible data in each table matching the datatype so your SQL queries produce output. Pay attention to tables with relationships in regards to PK’s and matching FK’s.

•	The project is due on April 19th by the end of the day (11:59 PM)

Identify a real-world problem and provide a solution that requires designing a MYSQL relational database.  Examples of such problems could be anything from a database for an airline reservation system to a database to track movies and outcomes of chess games.  Whatever problem you choose it must have enough complexity so that your database would contain at least 10 tables.

Your final report MUST contain the following sections:
•	Title page
o	Includes name or names
o	Course name and Instructor
o	Date

•	Table of contents (make sure to number your pages)

•	Introduction/Abstract (5 points)
o	A brief 1-2 paragraph project description
o	Description of your target audience
o	Purpose and benefits of your database

•	UML-compliant E-R Model (25 points)
o	Use class diagram-style rectangles to show entities and their attributes
o	Use lower case underscore naming convention
o	Underline primary keys
o	Prefix names of foreign key fields with fk_
o	DO NOT use crow’s feet notation - use lines and arrows to show one / many sides of a relationship
o	Show complete cardinalities for every side of a relationship

•	Business rules (20 points)
Use the table below to list all business rules and link them to E-R Model cardinalities. For many-to-many relationships, draw junction tables in the E-R Model.  You still need to specify cardinalities of each relationship. Use the first line in the table as an example:

Entity 1	Entity 2	Cardinality on Entity 1 side	Cardinality on Entity 2 side	Business Rule(s)
Film	Actor	1..*	1..*	A film may have one or many actors.  An actor must be associated with at least one film.

•	Entity/Attribute descriptions (20 points)
Use the table below to list all entities and corresponding attributes. Make sure to label primary and foreign keys with (pk) and (fk).  Create a table such as the one below for each entity in your database.

Entity name
Attribute 1	Data Type	Description
Attribute 2	Data Type	Description

•	List of questions (25 points)
Provide at least 10 meaningful questions that an end user can ask of your data.  You must provide an SQL SELECT query with every question - the query that answers that question.  You must have at least one of each of the following query clauses represented in your queries. Explain how the answer to the query would add value.
1.	Single table SELECT
2.	INNER JOIN
3.	LEFT JOIN
4.	At least two queries using different aggregate functions (MIN, MAX, SUM, AVG, COUNT)
5.	GROUP BY
6.	HAVING
7.	ORDER BY
8.	LIMIT
9.	Subquery using IN predicate
Note: Don’t simply write a query for example in order to use a GROUP BY or a LIMIT. It is very important to create a meaningful question that will be answered. 

•	Closing section (5 points)
One paragraph describing your experience with this project. Sample questions: What was the most difficult, easiest or insight gained?

