DROP DATABASE bank;
CREATE DATABASE  bank;
USE bank;

CREATE TABLE account 
(
	account_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    balance DOUBLE NOT NULL,
    my_type VARCHAR(30) NOT NULL,
    date_opened  DATETIME NOT NULL,
    my_status VARCHAR(30) NOT NULL
);

CREATE TABLE transactions
 (
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    date_time DATETIME NOT NULL,
    amount DOUBLE NOT NULL,
    remaining_balance DOUBLE NOT NULL,
    fk_account_id INT NOT NULL
    
);

ALTER TABLE transactions
ADD CONSTRAINT my_constraint
FOREIGN KEY (fk_account_id)
REFERENCES account(account_id);
#Needs to add time
INSERT INTO account(balance,my_type,date_opened,my_status)
VALUES (500,"checking","1996-10-15 20:10:11","open");

INSERT INTO account(balance,my_type,date_opened,my_status)
VALUES (700,"checking","2006-5-10 22:15:14","open");

INSERT INTO account(balance,my_type,date_opened,my_status)
VALUES (900,"checking","2005-2-3 23:10:15","open");

INSERT INTO transactions(date_time,amount,remaining_balance,fk_account_id)
VALUES ("2016-10-10 15:13:01",100,600,1);

INSERT INTO transactions(date_time,amount,remaining_balance,fk_account_id)
VALUES ("2016-10-11 09:59:12",100,700,1);

INSERT INTO transactions(date_time,amount,remaining_balance,fk_account_id)
VALUES ("2016-10-13 10:12:13",100,800,1);

INSERT INTO transactions(date_time,amount,remaining_balance,fk_account_id)
VALUES ("2015-2-15 02:12:15",200,800,2);

INSERT INTO transactions(date_time,amount,remaining_balance,fk_account_id)
VALUES ("2014-3-20 01:24:25",400,1000,3);

SELECT date_opened FROM account
ORDER BY date_opened DESC;

SELECT * FROM transactions
WHERE fk_account_id = 1;

UPDATE account SET my_status ="active" WHERE account_id = 1; 
UPDATE account SET my_status ="active" WHERE account_id = 2; 
UPDATE account SET my_status ="active" WHERE account_id = 3;

DELETE FROM transactions WHERE transaction_id =4  