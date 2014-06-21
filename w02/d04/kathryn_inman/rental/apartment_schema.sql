DROP TABLE doormen;
DROP TABLE tenants;
DROP TABLE apartments;
DROP TABLE buildings;

CREATE TABLE buildings(
  id SERIAL PRIMARY KEY,
  name varchar(500),
  address varchar(500),
  num_floors integer
);

CREATE TABLE doormen(
  id SERIAL PRIMARY KEY,
  name varchar(500),
  experience integer,
  shift varchar(500),
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  floor integer,
  name varchar(500),
  price integer,
  sqft integer,
  bedrooms integer,
  bathrooms integer,
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE tenants(
  id SERIAL PRIMARY KEY,
  name varchar(500),
  age integer,
  gender varchar(500),
  apartment_id integer REFERENCES apartments(id)
);
