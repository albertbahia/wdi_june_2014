DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS doorman;

CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(512),
  num_floors INTEGER
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor INTEGER,
  name VARCHAR(255),
  price INTEGER NOT NULL,
  sqft INTEGER NOT NULL,
  bedrooms INTEGER NOT NULL,
  bathrooms INTEGER NOT NULL,
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER NOT NULL,
  gender VARCHAR(255),
  apartment_id INTEGER REFERENCES apartments(id)
);


CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  experience INTEGER,
  shift VARCHAR(255),
  building_id INTEGER REFERENCES buildings(id)
);
