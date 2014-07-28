TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('Book 1', 'Thriller', 'Author 1');
INSERT INTO books (title, genre, author) VALUES ('Book 2', 'Thriller', 'Author 2');
INSERT INTO books (title, genre, author) VALUES ('Book 3', 'Sci-Fi', 'Author 3');
INSERT INTO books (title, genre, author) VALUES ('Book 4', 'Sci-Fi', 'Author 4');
INSERT INTO books (title, genre, author) VALUES ('Book 5', 'Fantasy', 'Author 5');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('John',1,'active', 5);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jane', 2, 'active',10);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jim', 3, 'active', 20);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jan', 4, 'active', 3);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jack', 5, 'active', 2);
