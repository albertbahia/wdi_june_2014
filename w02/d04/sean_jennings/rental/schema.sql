DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS doormen;

CREATE TABLE buildings(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(512),
  num_floors INTEGER
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  floor INTEGER,
  name VARCHAR(255),
  price INTEGER,
  sqft INTEGER,
  bedrooms INTEGER,
  bathrooms INTEGER,
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE tenants(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  gender VARCHAR(255),
  apartment_id INTEGER REFERENCES apartments(id)
);

CREATE TABLE doormen(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  experience VARCHAR(255),
  shift VARCHAR(255),
  building_id INTEGER REFERENCES buildings(id)
);
