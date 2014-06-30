DROP TABLE if exists images;

-- create table with the defined attributes from specs

CREATE TABLE images(
  id serial primary key,
  author varchar(255),
  img_url varchar(512),
  date_posted date,
  caption varchar(255)
);
