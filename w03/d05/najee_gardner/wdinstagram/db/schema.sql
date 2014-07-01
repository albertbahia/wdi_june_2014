DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS posts CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    visit_key VARCHAR(255)
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    image_url VARCHAR(255),
    post_date DATE,
    caption VARCHAR(255),
    user_id INTEGER REFERENCES users(id)
);
