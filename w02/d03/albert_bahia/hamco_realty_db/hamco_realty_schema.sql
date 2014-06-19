DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_no integer NOT NULL,
  no_bedrooms integer,
  no_bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  status varchar(255),
  sq_foot integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_no varchar(255),
  no_floors integer,
  sq_foot integer,
  no_cubicles integer,
  no_bathrooms integer,
  address varchar(255),
  company_name varchar(255),
  status varchar(255),
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  status varchar(255),
  price integer,
  kitchen varchar (255),
  sq_foot integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);
