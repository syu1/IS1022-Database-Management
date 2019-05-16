DROP DATABASE resturant;
CREATE DATABASE  resturant;
USE resturant;

CREATE TABLE resturant_locations
(
	resturant_locations_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    state VARCHAR(30) NOT NULL,
    zip int NOT NULL,
    phone DOUBLE NOT NULL
);

CREATE TABLE department
 (
	department_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(30),
    number_of_employees INT NOT NULL
);
CREATE TABLE employees
(
	employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    date_hired DATETIME NOT NULL,
    background_status varchar(30) NOT NULL,
    fk_department_id INT NOT NULL,
    fk_resturant_locations_id INT NOT NULL
);
ALTER TABLE employees
ADD CONSTRAINT employee_constraint_location
FOREIGN KEY (fk_resturant_locations_id)
REFERENCES resturant_locations(resturant_locations_id);

ALTER TABLE employees
ADD CONSTRAINT employee_constraint
FOREIGN KEY (fk_department_id)
REFERENCES department(department_id);

CREATE TABLE payroll
(
	payroll_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    hours_worked_this_week DOUBLE NOT NULL,
    salary_per_hour DOUBLE NOT NULL,
    fk_employee_id INT NOT NULL
    
);

ALTER TABLE payroll
ADD CONSTRAINT payroll_constraint
FOREIGN KEY (fk_employee_id)
REFERENCES employees(employee_id);

CREATE TABLE orders
(
	order_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_first_name VARCHAR(30) NOT NULL,
    customer_last_name VARCHAR(30) NOT NULL,
    dish VARCHAR(30) NOT NULL,
    payment DOUBLE NOT NULL,
    payment_type VARCHAR(30) NOT NULL,
    fk_location_id INT NOT NULL
);
ALTER TABLE orders
ADD CONSTRAINT orders_constraint
FOREIGN KEY (fk_location_id)
REFERENCES resturant_locations(resturant_locations_id);

CREATE TABLE customer_reviews
(
	customer_review_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_score INT NOT NULL,
    customer_review VARCHAR(200) NOT NULL,
    fk_order_id INT NOT NULL
);

ALTER TABLE customer_reviews
ADD CONSTRAINT customer_reviews_constraint
FOREIGN KEY (fk_order_id)
REFERENCES orders(order_id);

CREATE TABLE inventory
(
	inventory_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	beef varchar(30) NOT NULL,
    fish varchar(30) NOT NULL,
    potatoes varchar(30) NOT NULL,
    tomatoes varchar(30) NOT NULL,
    soap varchar(30) NOT NULL,
    
    fk_location_id INT NOT NULL
);
ALTER TABLE inventory
ADD CONSTRAINT inventory_constraint
FOREIGN KEY (fk_location_id)
REFERENCES resturant_locations(resturant_locations_id);

CREATE TABLE vendors
(
	vendor_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    vend_name varchar(30) NOT NULL,
    vend_product VARCHAR(30) NOT NULL,
    amount VARCHAR(30) NOT NULL,
    order_date DATETIME NOT NULL,
    arrival_status BOOLEAN NOT NULL,
    fk_resturant_locations_id INT NOT NULL
);

ALTER TABLE vendors
ADD CONSTRAINT vendor_constraint
FOREIGN KEY (fk_resturant_locations_id)
REFERENCES resturant_locations(resturant_locations_id);

CREATE TABLE permits
(
	permit_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	permit_name varchar(30) NOT NULL,
    permit_renewal_cost DOUBLE NOT NULL,
    last_renewal DATETIME NOT NULL,
    fk_resturant_locations_id INT NOT NULL
);

ALTER TABLE permits
ADD CONSTRAINT permit_constraint
FOREIGN KEY(fk_resturant_locations_id)
REFERENCES resturant_locations(resturant_locations_id);

CREATE TABLE profitability
(
	profitability_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    total_operating_cost DOUBLE NOT NULL,
    total_revenue DOUBLE NOT NULL,
	fk_resturant_locations_id INT NOT NULL
);

ALTER TABLE profitability
ADD CONSTRAINT profitability_constraint
FOREIGN KEY(fk_resturant_locations_id)
REFERENCES resturant_locations(resturant_locations_id);


INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("251 Luther Drive","New York","New York", 14215,3549691234);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("324 Samson Drive","Buffalo","New York", 26275,3519481237);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("512 Robert Circle","Providence","Rhode Island", 88715,3549991073);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("011 Johnson Avenue","Chicago","Illinois", 00123,3001191234);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("123 Washington Drive","Cleveland","Ohio", 69845,1549951238);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("432 Lincoln Blvd","Detriot","Michigan", 15676,4632991230);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("675 Kennedy Drive","Green Bay","Wisconsin", 87644,1249981234);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("096 Malcolm Drive","Des Moines","Idaho", 25890,3456731334);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("764 Bradley Drive","Atlanta","Georgia", 99991,3549594234);

INSERT INTO resturant_locations(street,city,state,zip,phone)
VALUES("099 Peach Drive","Charlotte","South Carolina", 11115,7776668888);

INSERT INTO department(department_name,number_of_employees)
VALUES("Busboy",50);

INSERT INTO department(department_name,number_of_employees)
VALUES("Waiter",100);

INSERT INTO department(department_name,number_of_employees)
VALUES("Sanitation",20);

INSERT INTO department(department_name,number_of_employees)
VALUES("Manager",30);

INSERT INTO department(department_name,number_of_employees)
VALUES("Owner",10);

INSERT INTO department(department_name,number_of_employees)
VALUES("Line Cook",40);

INSERT INTO department(department_name,number_of_employees)
VALUES("Sous Chef",20);

INSERT INTO department(department_name,number_of_employees)
VALUES("Head Chef",10);

INSERT INTO department(department_name,number_of_employees)
VALUES("Dessert Chef",33);

INSERT INTO department(department_name,number_of_employees)
VALUES("Greeter",20);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("John","Smith","2005-2-3 12:11:15","Battery",7,2);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Sam","Yu","2008-5-15 08:10:15","clean",3,1);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Chris","Zhang","2012-5-2 23:10:15","clean",9,1);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Tina","Sun","2015-7-20 23:10:15","Assault",2,4);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Sidd","Johnson","2016-8-20 23:10:15","Unverfied",10,10);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Bradley","Barkley","2013-1-1 23:10:15","clean",5,5);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Robert","Singer","2012-7-25 23:10:15","clean",6,3);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Plato","Hanger","2002-12-3 23:10:15","Theft",10,3);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Dylan","Bob","2000-1-5 23:10:15","clean",4,4);

INSERT INTO employees(first_name,last_name,date_hired,background_status,fk_department_id,fk_resturant_locations_id)
VALUES("Justin","Kinder","2016-5-3 23:10:15","Unverifed",1,1);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,8.25,1);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,12.25,2);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(30,18.25,3);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,18.25,4);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,28.25,5);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,38.25,6);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,18.25,7);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,28.25,8);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,8.25,9);

INSERT INTO payroll(hours_worked_this_week,salary_per_hour,fk_employee_id)
VALUES(40,48.25,10);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Bob","Hemingway","Steak",2.25,"Visa",1);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Eric","Thomas","Burger",4.25,"Visa",2);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Thomas","Jefferson","Fries",6.25,"Visa",3);


INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Mario","Chambers","Burger",14.25,"Visa",4);


INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Rebbeca","Washington","Steak",13.25,"Visa",5);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Luther","Mufaro","Fries and Burger",9.25,"Visa",6);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Handsome","Jack","Ribeye",15.25,"Visa",7);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Claptrap","Robuts","Baked Potatoe and Beef",12.25,"Visa",8);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Peter","Parker","Steak and Hash Browns",8.25,"Visa",9);

INSERT INTO orders(customer_first_name,customer_last_name,dish,payment,payment_type,fk_location_id)
VALUES("Ernest","Important","Burger and Steak",22.25,"Visa",10);


INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(10,"Loved it",3);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(9,"Great Food",3);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(2,"Undercooked",1);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(7,"Loved it",6);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(9,"Good",3);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(10,"Loved it",3);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(10,"Loved it",9);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(10,"Loved it",10);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(1,"Rotten",1);

INSERT INTO customer_reviews(customer_score,customer_review,fk_order_id)
VALUES(1,"Bad",1);


INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("60 pounds","15 pounds","30 pounds", "10 pounds", "50 Liters",1);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("40 pounds","14 pounds","0 pounds", "10 pounds", "0 Liters",2);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("10 pounds","12 pounds","50 pounds", "10 pounds", "10 Liters",3);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("5 pounds","55 pounds","70 pounds", "10 pounds", "50 Liters",4);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("70 pounds","135 pounds","10 pounds", "10 pounds", "50 Liters",5);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("100 pounds","5 pounds","20 pounds", "10 pounds", "50 Liters",6);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("20 pounds","0 pounds","40 pounds", "10 pounds", "50 Liters",7);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("8 pounds","20 pounds","10 pounds", "10 pounds", "50 Liters",8);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("0 pounds","16 pounds","90 pounds", "10 pounds", "60 Liters",9);

INSERT INTO inventory(beef,fish,potatoes,tomatoes,soap,fk_location_id)
VALUES("10 pounds","15 pounds","0 pounds", "10 pounds", "70 Liters",10);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Johns Potatoes","Potatoes","30 Pounds","2016-9-5 22:10:14",true,1);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Sams Potatoes","Potatoes","20 Pounds","2016-4-25 22:10:14",false,2);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Bobs Potatoes","Potatoes","10 Pounds","2016-3-15 22:10:14",false,3);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Burt Beef","Beef","30 Pounds","2016-3-6 22:10:14",true,4);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Toms Tomatoes","Tomatoes","30 Pounds","2016-2-5 22:10:14",true,7);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Georges Soap","Soap","200 Liters","2016-7-5 22:10:14",false,3);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Gregs Fish","Fish","15 Pounds","2016-10-15 22:10:14",true,1);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Fry's Fish","Fish","20 Pounds","2016-11-4 22:10:14",true,7);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Samantha's Potatoes","Potatoes","90 Pounds","2016-12-1 22:10:14",true,10);

INSERT INTO vendors(vend_name,vend_product,amount,order_date,arrival_status,fk_resturant_locations_id)
VALUES("Johnsons Soap","Soap","5 Liters","2016-4-5 22:10:14",true,9);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",400,"2016-6-25 09:00:00",1);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Business",500,"2016-1-5 09:00:00",1);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",200,"2016-7-5 09:00:00",2);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",500,"2016-2-5 09:00:00",3);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",600,"2014-2-5 09:00:00",4);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Business",400,"2017-3-5 09:00:00",5);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",600,"2016-1-9 09:00:00",6);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",500,"2015-3-5 09:00:00",7);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",500,"2012-1-4 09:00:00",8);

INSERT INTO permits(permit_name,permit_renewal_cost,last_renewal,fk_resturant_locations_id)
VALUES("Alcohol",250,"2016-3-3 09:00:00",9);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(25000,50000,1);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(55000,50000,2);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(65000,50000,3);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(15000,60000,4);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(5000,70000,5);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(1000,300,6);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(900,4000,7);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(10000,200,8);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(5000,600,9);

INSERT INTO profitability(total_operating_cost,total_revenue,fk_resturant_locations_id)
VALUES(30000,70000,10);

SELECT * from department;

SELECT * from profitability
JOIN resturant_locations  ON resturant_locations_id =fk_resturant_locations_id;

SELECT * from resturant_locations
LEFT JOIN vendors  ON resturant_locations_id =fk_resturant_locations_id;

SELECT fk_resturant_locations_id,MAX(total_revenue) AS highest_rev from profitability;

SELECT fk_resturant_locations_id,MIN(total_revenue) AS lowest_reve from profitability;


SELECT employee_id,first_name,background_status from employees GROUP BY background_status;

SELECT arrival_status,vend_name,fk_resturant_locations_id from vendors HAVING arrival_status = false;

SELECT soap from inventory ORDER BY soap ASC;

SELECT fk_resturant_locations_id,total_revenue from profitability ORDER BY total_revenue DESC LIMIT 3; 






    