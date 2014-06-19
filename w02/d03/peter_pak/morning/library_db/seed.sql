TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) values ('Harry Potter', 'Fantasy', 'J.K. Rowling');
INSERT INTO books (title, genre, author) values ('Death Of A Salesman', 'Drama', 'Arther Miller');
INSERT INTO books (title, genre, author) values ('Goosebumps', 'Horror', 'R.L. Stine');
INSERT INTO books (title, genre, author) values ('Oh The Places You Will Go', 'Childrens', 'Dr Seuss');
INSERT INTO books (title, genre, author) values ('Harry Potter 2', 'Fantasy', 'J.K. Rowling');
INSERT INTO books (title, genre, author) values ('The Outsiders', 'Gangs', 'S.E. Hinton');


INSERT INTO patrons (name, card_no, status, money_owed) values ('Abe Linc', 34098, 'Inactive', 30);
INSERT INTO patrons (name, card_no, status, money_owed) values ('Tennessee Williams', 11384, 'Inactive', 0);
INSERT INTO patrons (name, card_no, status, money_owed) values ('Donald Sterling', 44382, 'Suspended', 3000000);
INSERT INTO patrons (name, card_no, status, money_owed) values ('Jessie Spano', 13209, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) values ('Bryan Adams', 32239, 'Active', 73);
INSERT INTO patrons (name, card_no, status, money_owed) values ('Homer Simpson', 44930, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) values ('Richie Rich', 11223, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) values ('Kevin Durant', 88940, 'Inactive', 102);


INSERT INTO employees (name, position, salary) values ('Jan Itor', 'Janitor', 40000);
INSERT INTO employees (name, position, salary) values ('Dr Acula', 'Librarian', 32000);
INSERT INTO employees (name, position, salary) values ('Chris Turk', 'Librarian', 32000);
INSERT INTO employees (name, position, salary) values ('John Dorian', 'Consultant', 70000);
INSERT INTO employees (name, position, salary) values ('Bob Kelso', 'That Guy', 50000);
