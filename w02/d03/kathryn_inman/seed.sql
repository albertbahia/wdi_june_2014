TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Sci-Fi', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Sci-Fi', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Fantasy', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 6', 'Thriller', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 7', 'Thriller', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 8', 'Sci-Fi', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 9', 'Sci-Fi', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 10', 'Fantasy', 'Author 5');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 1', '1001', 'Active', 100);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 2', '1002', 'Active', 200);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 3', '1003', 'Expired', 500);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 4', '1004', 'Active', 10);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 5', '1005', 'Expired', 90);

INSERT INTO employees(name, position, salary) VALUES ('Employee 1', 'Librarian', 10);
INSERT INTO employees(name, position, salary) VALUES ('Employee 2', 'Janitor', 12);
INSERT INTO employees(name, position, salary) VALUES ('Employee 3', 'Librarian', 9000);
