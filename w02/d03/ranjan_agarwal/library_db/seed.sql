TRUNCATE TABLE books;
TRUNCATE TABLE patrons;
TRUNCATE TABLE employees;


INSERT INTO books (title,genre,author) VALUES ('The Name of the Wind', 'Fantasy', 'Patrick Rothfuss');
INSERT INTO books (title,genre,author) VALUES ('Harry Potter 1', 'Fantasy', 'J.K. Rowling');
INSERT INTO books (title,genre,author) VALUES ('A Game of Thrones', 'Fantasy', 'George R.R. Martin');
INSERT INTO books (title,genre,author) VALUES ('1984', 'Fiction', 'George Orwell');
INSERT INTO books (title,genre,author) VALUES ('Catch-22', 'Fiction', 'Joseph Heller');
INSERT INTO books (title,genre,author) VALUES ('Siddhartha', 'Fiction', 'Herman Hesse');
INSERT INTO books (title,genre,author) VALUES ('Book 1', 'Fiction', 'Author 1');
INSERT INTO books (title,genre,author) VALUES ('Book 2', 'Fiction', 'Author 2');
INSERT INTO books (title,genre,author) VALUES ('Book 3', 'Fiction', 'Author 2');
INSERT INTO books (title,genre,author) VALUES ('Book 4', 'Fiction', 'Author 3');

INSERT INTO patrons (name,card_no,status,money_owed) VALUES ('John Smith', 123456, 'Active', 0);
INSERT INTO patrons (name,card_no,status,money_owed) VALUES ('Roger Rabbit', 454643, 'Expired', 50);
INSERT INTO patrons (name,card_no,status,money_owed) VALUES ('Jill Smith', 835858, 'Active', 100);
INSERT INTO patrons (name,card_no,status,money_owed) VALUES ('Frank James', 240405, 'Expired', 100);
INSERT INTO patrons (name,card_no,status,money_owed) VALUES ('Terry Smith', 933939, 'Active', 400);

INSERT INTO employees (name,position,salary) VALUES ('Alexis Smith', 'Librarian', 20001);
INSERT INTO employees (name,position,salary) VALUES ('Bill Boe', 'Librarian', 20000);
INSERT INTO employees (name,position,salary) VALUES ('Jack Jill', 'Janitor', 60000);
INSERT INTO employees (name,position,salary) VALUES ('Tom Jack', 'Book Guy', 10000);
INSERT INTO employees (name,position,salary) VALUES ('Sam Joe', 'Janitor', 60001);
