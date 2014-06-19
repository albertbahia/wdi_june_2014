DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_number integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenant_name varchar(255),
  status varchar(255),
  square_feet integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  number_of_floors integer,
  square_feet integer,
  cubicles integer,
  bathrooms integer,
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
  kitchen boolean,
  square_feet integer,
  owner_name varchar(255),
  outdoor_seating boolean
);
