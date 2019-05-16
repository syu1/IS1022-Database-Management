DROP DATABASE movie_tracker;
CREATE DATABASE  movie_tracker;
USE movie_tracker;

CREATE TABLE movies
(
	movie_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(200) NOT NULL,
    release_date DATETIME NOT NULL,
    plot_description VARCHAR(4000) NOT NULL
	
);

CREATE TABLE actors
 (
	actor_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birth_date DATETIME NOT NULL,
    biography VARCHAR(1000) NOT NULL
	
    
);

CREATE TABLE locations
(
	location_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    location_name VARCHAR(100) NOT NULL,
    street_address VARCHAR(150) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state CHAR(2) NOT NULL,
    zip VARCHAR(5) NOT NULL
	
);

CREATE TABLE movie_actors
(
	movie_id INT NOT NULL,
    actor_id INT NOT NULL
);

CREATE TABLE movie_locations
(
	movie_id INT NOT NULL,
    location_id INT NOT NULL
);

#ALTER TABLE transactions
#ADD CONSTRAINT my_constraint
#FOREIGN KEY (fk_account_id)
#REFERENCES account(account_id);
#Needs to add time
INSERT INTO movies(title,release_date,plot_description)
VALUES ("Star Wars","1996-10-15 20:10:11","Galaxy Conquest");

INSERT INTO movies(title,release_date,plot_description)
VALUES ("Pirates","2006-5-10 22:15:14","ARGH!!");

INSERT INTO movies(title,release_date,plot_description)
VALUES ("Apples","2003-5-10 22:15:14","Fruit");

