TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Main Street', 'Novel', 'Sinclair Lewis');
INSERT INTO books (title, genre, author) VALUES ('Babbit', 'Novel', 'Sinclair Lewis');
INSERT INTO books (title, genre, author) VALUES ('The Jungle', 'Novel', 'Upton Sinclair');
INSERT INTO books (title, genre, author) VALUES ('Arrowhead', 'Novel', 'Sinclair Lewis');
INSERT INTO books (title, genre, author) VALUES ('An American Tragedy', 'Novel', 'Theodore Dreiser');
INSERT INTO books (title, genre, author) VALUES ('Island', 'Novel', 'Aldous Huxley');
INSERT INTO books (title, genre, author) VALUES ('The Trial', 'Dystopic', 'Franz Kafka');
INSERT INTO books (title, genre, author) VALUES ('Fast Food Nation', 'Social Science', 'Eric Schlosser');
INSERT INTO books (title, genre, author) VALUES ('The Histories', 'History', 'Herodotus');
INSERT INTO books (title, genre, author) VALUES ('Elements', 'Mathematics', 'Euclid');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Larry', 1001, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Moey', 1002, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Curly', 1003, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Joe', 1004, 'Expired', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Cindy', 1005, 'Active', 20);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Mindy', 1006, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Linda', 1007, 'Expired', 50);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Pablo', 1008, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Colin', 1009, 'Expired', 10);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Marcus', 1010, 'Active', 0);

INSERT INTO employees (name, position, salary) VALUES ('Bill', 'Librarian', 30);
INSERT INTO employees (name, position, salary) VALUES ('Bob', 'Janitor', 30);
INSERT INTO employees (name, position, salary) VALUES ('Jim', 'Janitor', 40);
INSERT INTO employees (name, position, salary) VALUES ('Whitney', 'Librarian', 50);
INSERT INTO employees (name, position, salary) VALUES ('LeBron', 'Librarian', 500);
INSERT INTO employees (name, position, salary) VALUES ('Dwayne', 'Librarian', 400);
INSERT INTO employees (name, position, salary) VALUES ('Chris', 'Librarian', 450);
INSERT INTO employees (name, position, salary) VALUES ('Kevin', 'Librarian', 30);
INSERT INTO employees (name, position, salary) VALUES ('Paul', 'Librarian', 25);
INSERT INTO employees (name, position, salary) VALUES ('Dana', 'Librarian', 30);
