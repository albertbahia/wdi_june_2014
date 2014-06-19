TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Goosebumps', 'Thriller', 'R. L. Stine');
INSERT INTO books (title, genre, author) VALUES ('The Bourne Identity', 'Thriller', 'Billy Mays');
INSERT INTO books (title, genre, author) VALUES ('Monster on the Moon', 'Sci-Fi', 'Marky Mark');
INSERT INTO books (title, genre, author) VALUES ('It', 'Horror', 'Stephen King');
INSERT INTO books (title, genre, author) VALUES ('The Never Ending Story', 'Fantasy', 'Elisa Willis');
INSERT INTO books (title, genre, author) VALUES ('I Am', 'Programming', 'Jessica Alba');
INSERT INTO books (title, genre, author) VALUES ('Steve Jobs', 'Biography', 'Walter Isaac');
INSERT INTO books (title, genre, author) VALUES ('The Book Book', 'Biography', 'Bookman');
INSERT INTO books (title, genre, author) VALUES ('Candid', 'Comedy', 'Voltaire');
INSERT INTO books (title, genre, author) VALUES ('Racer City', 'Thriller', 'Grilithe Domo');

INSERT INTO employees (name, position, salary) VALUES ('Rose Bennette', 'Librarian', 50);
INSERT INTO employees (name, position, salary) VALUES ('Craig Black', 'Librarian', 40);
INSERT INTO employees (name, position, salary) VALUES ('Dixie Winn', 'Janitor', 70);

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Mark Williams', 84734, 'Member', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Najee Gardner', 84735, 'Expired', 70);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Matthew Reyes', 84736, 'Member', 20);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Candra Wilson', 84737, 'Member', 35);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Josh Willems', 84738, 'Expired', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Tati Robinson', 84739, 'Member', 0);
