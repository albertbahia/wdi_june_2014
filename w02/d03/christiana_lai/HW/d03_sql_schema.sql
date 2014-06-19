DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE Apartments (
  id SERIAL PRIMARY KEY,
  apt_no integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  status varchar(255),
  sq_ft integer,
  price integer
);

CREATE TABLE Offices (
  id SERIAL PRIMARY KEY,
  office_no integer,
  floors integer,
  sq_ft integer,
  cubicles integer,
  bathrooms integer,
  address varchar(255),
  company varchar(255),
  status varchar(255),
  price integer
);

CREATE TABLE Storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  status varchar(255),
  price integer,
  has_kitchen varchar(255),
  sq_ft integer,
  owner varchar(255),
  has_outdoor_seating varchar(255)
);
