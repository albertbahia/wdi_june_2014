DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_no integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  is_occupied boolean,
  square_footage integer,
  price integer
);

CREATE TABLE offices(
  id SERIAL PRIMARY KEY,
  office_no integer,
  floors integer,
  square_footage integer,
  cubicles integer,
  bathrooms integer,
  address varchar(255),
  company_name varchar(255),
  is_occupied boolean,
  price integer
);

CREATE TABLE storefronts(
  id SERIAL PRIMARY KEY,
  address varchar(255),
  is_occupied boolean,
  price integer,
  has_kitchen boolean,
  square_footage integer,
  owner varchar(255),
  has_outdoor_seating boolean
);
