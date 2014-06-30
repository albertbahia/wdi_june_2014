DROP TABLE IF EXISTS images CASCADE;

CREATE TABLE images (
  id serial primary key,
  author varchar(255),
  img_url varchar(510),
  date_posted date,
  caption varchar(255)
);
