DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  unique_id SERIAL PRIMARY KEY,
  apt_no integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occupied boolean,
  area integer,
  price integer
);

CREATE TABLE offices (
  unique_id SERIAL PRIMARY KEY,
  office_no integer,
  floors integer,
  area integer,
  cubicles integer,
  bathrooms integer,
  address varchar(255),
  company_name varchar(255),
  occupied boolean,
  price integer
);

CREATE TABLE storefronts (
  unique_id SERIAL PRIMARY KEY,
  address varchar(255),
  occupied boolean,
  price integer,
  kitchen boolean,
  area integer,
  owner varchar(255),
  outdoor_seating boolean
);
