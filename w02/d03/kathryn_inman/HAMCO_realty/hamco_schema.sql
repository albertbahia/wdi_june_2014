DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE stores;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number integer,
  num_bedrooms integer,
  num_bathrooms integer,
  address varchar(200),
  tenant varchar(200),
  occupied boolean,
  sq_footage integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  num_floors integer,
  sq_footage integer,
  num_cubicles integer,
  num_bathrooms integer,
  address varchar(200),
  company_name varchar(200),
  occupied boolean,
  price integer
);

CREATE TABLE stores (
  id SERIAL PRIMARY KEY,
  address varchar(200),
  occupied boolean,
  price integer,
  kitchen boolean,
  sq_footage integer,
  owner varchar(200),
  outdoor_seating boolean
);
