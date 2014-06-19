DROP TABLE IF EXISTS doorman;
DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS building;

CREATE TABLE building (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  floors INTEGER
);

CREATE TABLE apartment (
  id SERIAL PRIMARY KEY,
  floor_num INTEGER,
  name VARCHAR(255),
  price INTEGER,
  sq_footage INTEGER,
  beds INTEGER,
  baths INTEGER,
  building_id INTEGER REFERENCES building(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  gender VARCHAR(255),
  apartment_id INTEGER REFERENCES apartment(id)
);

CREATE TABLE Doormen (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  experience INTEGER,
  shift VARCHAR(255),
  building_id INTEGER REFERENCES building(id)
);
