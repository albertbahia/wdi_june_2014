TRUNCATE books;
-- TRUNCATE deletes all data from the rows
TRUNCATE patrons;
TRUNCATE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author  1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Thriller', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Drama', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Drama', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Action', 'Author 5');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 1', 23, 'in the bathroom', 25);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 2', 25, 'in the library', 30);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 3', 27, 'in the non-fiction', 50);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 4', 28, 'in the fiction', 90);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 5', 34, 'in the periodicals', 51);

INSERT INTO employees (name, position, salary) VALUES ('Employee 1', 211, 2222);
INSERT INTO employees (name, position, salary) VALUES ('Employee 1', 233, 333);
INSERT INTO employees (name, position, salary) VALUES ('Employee 1', 234, 4123);
