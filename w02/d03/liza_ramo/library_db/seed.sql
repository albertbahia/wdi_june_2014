
TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;


INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Sci-Fi', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Sci-Fi', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Fantasy', 'Author 1');

INSERT INTO patrons (name, status, money_owed) VALUES ('Hari', 'Active', 500);
INSERT INTO patrons (name, status, money_owed) VALUES ('McKenneth', 'Expired', 400);
INSERT INTO patrons (name, status, money_owed) VALUES ('Adam', 'Expire', 10);
INSERT INTO patrons (name, status, money_owed) VALUES ('Khadijah', 'Expired', 5);
INSERT INTO patrons (name, status, money_owed) VALUES ('Sean', 'Active', 70);

INSERT INTO employees (name, position, salary) VALUES ('Sarit', 'Vacuumer', 10);
INSERT INTO employees (name, position, salary) VALUES ('Liza', 'Librarian', 50);
INSERT INTO employees (name, position, salary) VALUES ('Christiana', 'Manager', 300);
INSERT INTO employees (name, position, salary) VALUES ('Francis', 'Garbage Man', 50);
INSERT INTO employees (name, position, salary) VALUES ('Liz', 'Duster', 30);
