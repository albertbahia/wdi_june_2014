DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255) NOT NULL,
  tenant varchar(255),
  occupied_status varchar(255) NOT NULL,
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
  address varchar(255) NOT NULL,
  company_name varchar(255) NOT NULL,
  occupied_status varchar(255) NOT NULL,
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255) NOT NULL,
  occupied_status varchar(255) NOT NULL,
  price integer,
  kitchen varchar(255),
  sq_footage integer,
  owner varchar(255) NOT NULL,
  outdoor_seating varchar(255) NOT NULL
);
