CREATE TABLE IF NOT EXISTS books (
title varchar(255),
genre varchar(255),
author varchar(255)
);

CREATE TABLE IF NOT EXISTS patrons (
name varchar(255),
card_no integer,
status varchar(255),
money_owed integer
);

CREATE TABLE IF NOT EXISTS employees (
	name varchar(255),
	position varchar(255),
	salary integer
);
