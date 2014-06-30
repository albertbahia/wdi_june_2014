DROP TABLE IF EXISTS images;

create table images (
    id SERIAL PRIMARY KEY,
    author VARCHAR(255),
    image_url VARCHAR(510),
    date_posted DATE,
    caption VARCHAR(255)
);
