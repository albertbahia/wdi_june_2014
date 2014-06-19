TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Thriller', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Sci-Fi', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Sci-Fi', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Fantasy', 'Author 5');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Fantasy', 'Author 6');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 7');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 8');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Sci-Fi', 'Author 9');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 10');

INSERT INTO employees (name, position, salary) VALUES ('Bob', 'Librarian', 5);
INSERT INTO employees (name, position, salary) VALUES ('Carol', 'Librarian', 5);
INSERT INTO employees (name, position, salary) VALUES ('Steve', 'Janitor', 3);
INSERT INTO employees (name, position, salary) VALUES ('Linda', 'Security', 4);
INSERT INTO employees (name, position, salary) VALUES ('Jane', 'Janitor', 7);

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Tom', 1223, 'Expired', 50);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jones', 1224, 'Expired', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Billy', 1225, 'Active', 40);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Troy', 1226, 'Active', 15);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Yuri', 1227, 'Expired', 90);
