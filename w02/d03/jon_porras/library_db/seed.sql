TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Thriller', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Sci-Fi', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Sci-Fi', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Fantasy', 'Author 4');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('guy 1', '666', 'good', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('guy 2', '555', 'no good', 100);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('guy 3', '444', 'good', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('guy 4', '333', 'no good', 50);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('guy 5', '222', 'good', 0);

INSERT INTO employees (name, position, salary) VALUES ('employee 1', 'librarian', 40);
INSERT INTO employees (name, position, salary) VALUES ('employee 2', 'janitor', 20);
INSERT INTO employees (name, position, salary) VALUES ('employee 3', 'senior librarian', 60);
INSERT INTO employees (name, position, salary) VALUES ('employee 4', 'librarian', 40);
INSERT INTO employees (name, position, salary) VALUES ('employee 5', 'exectutive librarian', 80);
