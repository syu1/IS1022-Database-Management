INSERT INTO catergory(code,name)
VALUES("F","Fiction");

INSERT INTO catergory(code,name)
VALUES("NF","Non-Fiction");

INSERT INTO catergory(code,name)
VALUES("SF","Science Fiction");

INSERT INTO catergory(code,name)
VALUES("M","Mystery");

INSERT INTO catergory(code,name)
VALUES("R","Romance");

INSERT INTO book(title,description,price,category_id)
VALUES("Fahrenheit 451","In a far future world, television dominates, and books are outlawed",29.95,3);

INSERT INTO book(title,description,price,category_id)
VALUES("The preacher's promise", "The preachers'promise find newly hired school teacher Amanda Stewart going toe to toe with small Georgia town's mayor.",19.95,5);

INSERT INTO book(title,description,price,category_id)
VALUES("The Millionaire Next Door","3	The Millionaire Next Door	The seven common qualities that appear over and over among this exclusive demographic",	18.17,2);

INSERT INTO book(title,description,price,category_id)
VALUES("Twisted Crimes", "Full of twists and turns, this crime thriller will keep you turning the pages",7.99,4);

INSERT INTO book(title,description,price,category_id)
VALUES("For Your Eyes Only","Places him in the dangerous company of adversaries of all varieties.", 9.92,1);

INSERT INTO book(title,description,price,category_id)
VALUES("You Only Live Twice","The tragic end to James Bond’s last mission",	9.93,1);

INSERT INTO author(name)
VALUES("Thomas J. Stanley");

INSERT INTO author(name)
VALUES("Ray Bradbury");

INSERT INTO author(name)
VALUES("Piper Huguley");

INSERT INTO author(name)
VALUES("Michael Hambling");

INSERT INTO author(name)
VALUES("Ian Fleming");

INSERT INTO book_author(author_id)
VALUES(2)

INSERT INTO book_author(author_id)
VALUES(1)

INSERT INTO book_author(author_id)
VALUES(3)

INSERT INTO book_author(author_id)
VALUES(4)

INSERT INTO book_author(author_id)
VALUES(5)

INSERT INTO book_author(author_id)
VALUES(5)

SELECT * FROM category
SELECT * FROM book
SELECT * FROM author
SELECT * FROM book_author

