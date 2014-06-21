
TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book2', 'Thriller', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book3', 'Sci-Fi', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book4', 'Sci-Fi', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book5', 'Fantasy', 'Author 5');

INSERT INTO employees (name, position, salary) VALUES ('Billy', 'Janitor', '10');
INSERT INTO employees (name, position, salary) VALUES ('Bob', 'Front Desk Greeter', '11');
INSERT INTO employees (name, position, salary) VALUES ('Brandy', 'Librarian', '9');
INSERT INTO employees (name, position, salary) VALUES ('Beth', 'Elevator Clerk', '5');
INSERT INTO employees (name, position, salary) VALUES ('Brooke', 'Librarian', '9');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('James', 2001, 'Active', '40');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('John', 2002, 'Active', '500');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jenny', 2003,  'Expired', '150');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jeremiah', 2004, 'Expired', '0');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jane', 2005, 'Active', '0');
