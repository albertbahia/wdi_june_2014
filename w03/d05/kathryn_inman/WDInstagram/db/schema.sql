DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS images;


CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name varchar(255)
);

CREATE TABLE images(
  id SERIAL PRIMARY KEY,
  img_url varchar(512),
  date_posted varchar(255),
  user_id integer REFERENCES users(id)
)
