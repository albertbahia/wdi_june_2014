#remove the commented text before applying this doc to psql terminal

#this document seed.sql follows the implementation of our schema.sql file in the command line when we're running these documents in psql




TRUNCATE TABLE books; #TRUNCATE will delete all rows in a table
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Fantasy', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Fiction', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Science', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Math', 'Author 5');


INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 1', '1001', 'Active', 10);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 2', '1002', 'Active', 3);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 3', '1003', 'Expired', 17);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 4', '1004', 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 5', '1005', 'Expired', 0);

INSERT INTO employees (name, position, salary) VALUES ('Howard Smith', 'Associate', 50000);
INSERT INTO employees (name, position, salary) VALUES ('Harvey Simmons, 'Librarian Extraordinaire', 20000);
INSERT INTO employees (name, position, salary) VALUES ('Sue Kushner, 'Analyst', 35000);
