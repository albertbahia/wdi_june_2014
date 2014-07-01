TRUNCATE author CASCADE;
TRUNCATE image_url CASCADE;
TRUNCATE date_posted CASCADE;
TRUNCATE caption CASCADE;

INSERT INTO images(author, image_url, date_posted, caption) VALUES ('J.K. Rowling',       'United Kingdom', 1965);
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('James Baldwin',      'United States of America', 1924);
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Jorge Luis Borges',  'Argentina', 1899);
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Haruki Murakami',    'Japan', 1949);
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Milan Kundera',      'Czechoslovakia', 1929);
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Albert Camus',       'France', 1913);
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('George R.R. Martin', 'United States of America', 1945);