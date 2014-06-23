DROP TABLE IF EXISTS buildings CASCADE;
DROP TABLE IF EXISTS apartments CASCADE;
DROP TABLE IF EXISTS tenants CASCADE;
DROP TABLE IF EXISTS doormen CASCADE;

CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name VARCHAR(512),
  address VARCHAR(512),
  num_floors INTEGER
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor INTEGER,
  name VARCHAR(512),
  price INTEGER,
  sqft INTEGER,
  bedrooms INTEGER,
  bathrooms INTEGER,
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(512),
  age INTEGER,
  gender VARCHAR(512),
  apartment_id INTEGER REFERENCES apartments(id)
);

CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name VARCHAR(512),
  experience INTEGER,
  shift VARCHAR(255),
  building_id INTEGER REFERENCES buildings(id)
);
