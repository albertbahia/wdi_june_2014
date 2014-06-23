DROP TABLE IF EXISTS doormen;
DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS buildings;


CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name varchar(512),
  address varchar(512),
  num_floors integer
);

CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name varchar(512),
  experience integer,
  shift varchar(512),
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor integer,
  name integer,
  price integer,
  sqft integer,
  bedrooms integer,
  bathrooms integer,
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name varchar(512),
  age integer,
  gender varchar(512),
  apartment_id INTEGER REFERENCES apartments(id)
);
