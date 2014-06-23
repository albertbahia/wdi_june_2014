DROP TABLE authors; 
DROP TABLE books; 

CREATE TABLE authors (
id serial PRIMARY KEY,  
name varchar(255),
birth_year integer  
); 

CREATE TABLE books (
id serial PRIMARY KEY,  
title varchar(255),
author_id integer FOREIGN KEY REFERENCES authors.ID, 

);