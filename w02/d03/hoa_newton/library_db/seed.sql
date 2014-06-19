TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Thriller', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Horror', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Horror', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Sci-fi', 'Author 5');
INSERT INTO books (title, genre, author) VALUES ('Book 6', 'Sci-fi', 'Author 6');

INSERT INTO employees (name, position, salary) VALUES ('Joe', 'Manager', 400);
INSERT INTO employees (name, position, salary) VALUES ('Kate', 'Librarian', 200);
INSERT INTO employees (name, position, salary) VALUES ('Mary', 'Librarian', 50);
INSERT INTO employees (name, position, salary) VALUES ('Arthur', 'Manager', 100);
INSERT INTO employees (name, position, salary) VALUES ('Henry', 'House keeper', 60);
INSERT INTO employees (name, position, salary) VALUES ('Bob', 'House keeper', 90);

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jack', 4999, 'active', 500);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Bill', 4999, 'expire', 90);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Bob', 4999, 'expire', 40);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Chill', 4999, 'active', 60);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Lucy', 4999, 'active', 900);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Lee', 4999, 'active', 1300);