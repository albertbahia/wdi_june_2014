
DROP TABLE doormen;
DROP TABLE tenants;
DROP TABLE apartments;
DROP TABLE buildings;


CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  address varchar(512),
  num_floors integer
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor integer,
  name varchar(255),
  price integer,
  sqft integer,
  bedrooms integer,
  bathrooms integer,
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  age integer,
  gender varchar(255),
  apartment_id integer REFERENCES apartments(id)
);

CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  experience integer,
  shift varchar(255),
  building_id integer REFERENCES buildings(id)
);
