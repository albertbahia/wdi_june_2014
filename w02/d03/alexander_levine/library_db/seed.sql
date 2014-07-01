TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Action', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Sci-Fi', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Sci-Fi', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Fantasy', 'Author 5');
INSERT INTO books (title, genre, author) VALUES ('Book 6', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 7', 'Action', 'Author 6');
INSERT INTO books (title, genre, author) VALUES ('Book 8', 'Sci-Fi', 'Author 7');
INSERT INTO books (title, genre, author) VALUES ('Book 9', 'Sci-Fi', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 10', 'Fantasy', 'Author 4');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 1', 5000, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 2', 5001, 'Active', 20);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 3', 5002, 'Active', 400);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 4', 5003, 'Inactive', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Patron 5', 5004, 'Inactive', 4000);

INSERT INTO employees (name, position, salary) VALUES ('Alex', 'Libarian', 20);
INSERT INTO employees (name, position, salary) VALUES ('Liz', 'Head Libarian', 30);
INSERT INTO employees (name, position, salary) VALUES ('Sarit', 'Organizer', 10);
