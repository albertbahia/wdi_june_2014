DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number integer,
  num_bedrooms integer,
  num_bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occ_status boolean,
  sq_feet integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  num_floors integer,
  sq_feet integer,
  num_cubicles integer,
  num_bathrooms integer,
  address varchar(255),
  company varchar(255),
  occ_status boolean,
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  occ_status boolean,
  price integer,
  kitchen boolean,
  sq_feet integer,
  owner varchar(255),
  outdoor_seating boolean
);
