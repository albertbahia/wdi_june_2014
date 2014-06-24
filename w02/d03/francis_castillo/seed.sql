TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Alchemist', 'Fiction', 'Paolo Coehlo');
INSERT INTO books (title, genre, author) VALUES ('Hope They Serve beer ib Hell', 'Non-Fiction', 'Tyler');
INSERT INTO books (title, genre, author) VALUES ('Oscar Wao', 'Fiction', 'Junto Diaz');
INSERT INTO books (title, genre, author) VALUES ('In the Time of Butterflies', 'Fiction', 'Julia Alvarez');
INSERT INTO books (title, genre, author) VALUES ('The kiterunner', 'Fiction', 'Khaled Hosseini');
INSERT INTO books (title, genre, author) VALUES ('The Great Gatsby', 'Fiction', 'F Scott Fitzgerald');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jack', 112, 'Active', 10);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Sam', 76, 'Inactive', 100);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Rich', 2, 'Active', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Frank', 11, 'Active', 1000);
INSERT INTO employees (name,position, salary) VALUES ('mck', 'Teacher', 100);
INSERT INTO employees (name,position, salary) VALUES ('adam', 'Librarian', 10);
INSERT INTO employees (name,position, salary) VALUES ('hari', 'Teacher', 1000);
