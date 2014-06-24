DROP TABLE buildings CASCADE;
DROP TABLE doormens CASCADE;
DROP TABLE apartments CASCADE;
DROP TABLE tenants CASCADE;

CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  address varchar(512),
  num_floors varchar(255)

);

CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  experience Integer,
  shift varchar(255),
  building_id Integer REFERENCES buildings(id)
);

CREATE TABLE Apartments (
  id SERIAL PRIMARY KEY,
  floor Integer,
  name varchar(255),
  price Integer,
  sqft Integer,
  bedrooms Integer,
  bathrooms Integer,
  building_id Integer REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  age Integer,
  gender varchar(255),
  apartment_id Integer REFERENCES apartments(id)
);
