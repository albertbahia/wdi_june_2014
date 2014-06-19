DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_number integer,
  number_of_bedrooms integer,
  number_of_bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occupancy_status varchar(255),
  square_footage integer,
  price integer
  );

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  number_of_floors integer,
  square_footage integer,
  number_of_cubicles integer,
  number_of_bathrooms integer,
  address varchar(255),
  company_name varchar(255),
  occupancy_status varchar(255),
  price integer
  );

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  occupancy_status varchar(255),
  price integer,
  kitchen_available boolean,
  square_footage integer,
  owner varchar(255),
  outdoor_seating boolean
  );
