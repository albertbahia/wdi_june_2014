DROP TABLE books;
DROP TABLE patrons;
DROP TABLE employees;

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title varchar(255),
  genre varchar(255),
  author varchar(255)
);

CREATE TABLE patrons(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  card_no integer,
  status varchar(255),
  money_owed integer
);

CREATE TABLE employees(
  id SERIAL PRIMARY KEY,
  name varchar(255),
  position varchar(255),
  salary integer
);
