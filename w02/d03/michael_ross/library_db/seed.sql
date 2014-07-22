TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;

INSERT INTO books (title, genre, author) VALUES ('The Fountainhead', 'Fiction', 'Ayn Rand');
INSERT INTO books (title, genre, author) VALUES ('1984', 'Fiction', 'George Orwell');
INSERT INTO books (title, genre, author) VALUES ('The Naked and the Dead', 'Historical Fiction', 'Norman Mailer');
INSERT INTO books (title, genre, author) VALUES ('The Beautiful and Damned', 'Fiction', 'F. Scott Fitzgerald');
INSERT INTO books (title, genre, author) VALUES ('Hop on Pop', 'Children', 'Dr. Suess');
INSERT INTO books (title, genre, author) VALUES ('Less Than Zero', 'Fiction', 'Bret Easton Ellis');
INSERT INTO books (title, genre, author) VALUES ('Siddartha', 'Fiction', 'Herman Hesse');
INSERT INTO books (title, genre, author) VALUES ('The Quiet American', 'Fiction', 'Graham Greene');
INSERT INTO books (title, genre, author) VALUES ('An Inconvenient Truth', 'Non-Fiction', 'Al Gore');
INSERT INTO books (title, genre, author) VALUES ('Skin Game', 'Fiction', 'Ben Butcher');
INSERT INTO books (title, genre, author) VALUES ('Atlas Shrugged', 'Fiction', 'Ayn Rand');

INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Bill', 5001, 'Expired', 50);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Jane', 5002, 'Current', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Ted', 5003, 'Explired', 0);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Ray', 5004, 'Current', 40);
INSERT INTO patrons (name, card_no, status, money_owed) VALUES ('Lindsay', 5005, 'Current', 42);


INSERT INTO employees (name, position, salary) VALUES ('Fredo', 'Librarian', '50000');
INSERT INTO employees (name, position, salary) VALUES ('Juniper', 'Librian', '55000');
INSERT INTO employees (name, position, salary) VALUES ('Johnny', 'Custodian', '35000');
