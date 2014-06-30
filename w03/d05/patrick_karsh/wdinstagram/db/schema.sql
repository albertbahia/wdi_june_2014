DROP TABLE IF EXISTS images CASCADE;

CREATE TABLE images (
  id SERIAL PRIMARY KEY, 
  url VARCHAR(255),
  date_posted timestamp DEFAULT current_timestamp, 
  caption VARCHAR(510),
  author VARCHAR(510)
);
	
