TRUNCATE TABLE books;
TRUNCATE TABLE patron;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Harry Potter 1', 'Fantasy', 'J.K. Rowling');
INSERT INTO books (title, genre, author) VALUES ('Cujo', 'Thriller', 'Stephen King');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Sci-Fi', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Drama', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Horror', 'Author 5');

INSERT INTO patron (name, card_no, status, money_owed) VALUES ('The Dude', 123, 'active', 50);
INSERT INTO patron (name, card_no, status, money_owed) VALUES ('Doni Buscemi', 345, 'expired', 30);
INSERT INTO patron (name, card_no, status, money_owed) VALUES ('Jon Goodman', 678, 'active', 500);
INSERT INTO patron (name, card_no, status, money_owed) VALUES ('Allan Silver', 910, 'expired', 25);
INSERT INTO patron (name, card_no, status, money_owed) VALUES ('Bobby Boucher', 111, 'active', 0);

INSERT INTO employees (name, position, salary) VALUES ('Peter Griffin', 'Librarian', 35000);
INSERT INTO employees (name, position, salary) VALUES ('Lois Griffin', 'Assistant Librarin', 30000);
INSERT INTO employees (name, position, salary) VALUES ('Brian Griffin', 'IT', 26000);
INSERT INTO employees (name, position, salary) VALUES ('Stewie Griffin', 'Ladder Roller', 15000);
INSERT INTO employees (name, position, salary) VALUES ('Chris Griffin', 'Janitor', 25000);
