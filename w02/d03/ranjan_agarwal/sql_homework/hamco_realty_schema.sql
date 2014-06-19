DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number varchar(255),
  number_of_bedrooms integer,
  number_of_bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occupied_status varchar(255),
  sq_ft integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number varchar(255),
  number_of_floors integer,
  sq_ft integer,
  number_of_cubicles integer,
  number_of_bathrooms integer,
  address varchar(255),
  company_name varchar(255),
  occupied_status varchar(255),
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  occupied_status varchar(255),
  price integer,
  kitchen varchar(255),
  sq_ft integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);
