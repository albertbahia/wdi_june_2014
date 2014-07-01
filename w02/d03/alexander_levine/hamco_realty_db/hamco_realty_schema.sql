DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_num varchar(255) NOT NULL,
  num_bedrooms integer NOT NULL,
  num_bathrooms integer NOT NULL,
  address varchar(255) NOT NULL,
  tenant varchar(255),
  occupied_status varchar(255),
  sq_footage integer NOT NULL,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_num varchar(255) NOT NULL,
  num_floors integer NOT NULL,
  sq_footage integer NOT NULL,
  num_cubicles integer NOT NULL,
  num_bathrooms integer NOT NULL,
  address varchar(255) NOT NULL,
  company_name varchar(255),
  occupied_status varchar(255),
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255) NOT NULL,
  occupied_status varchar(255),
  price integer,
  kitchen varchar(255) NOT NULL,
  sq_footage integer NOT NULL,
  owner varchar(255),
  outdoor_seating varchar(255) NOT NULL
);
