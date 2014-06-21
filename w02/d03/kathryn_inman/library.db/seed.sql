TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Gone With the Wind', 'Thriller', 'Sam Smith');
INSERT INTO books (title, genre, author) VALUES ('', 'Thriller', 'Sam Smith', '2');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Sam Smith');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Sam Smith');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Sam Smith');
INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Sam Smith');


INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('name 1', 'card int. 1', '+1', 'debt1');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('name 2', 'card int. 2', '+2', 'debt2');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('name 3', 'card int. 3', '+3', 'debt3');
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('name 4', 'card int. 4', '+4', 'debt4');

INSERT INTO employees (name, position, salary) VALUES ('Joe', 'sales', 'salary');
INSERT INTO employees (name, position, salary) VALUES ('Jo', 'so sales', 'salary');
INSERT INTO employees (name, position, salary) VALUES ('Joee', 'very sales', 'salary');
