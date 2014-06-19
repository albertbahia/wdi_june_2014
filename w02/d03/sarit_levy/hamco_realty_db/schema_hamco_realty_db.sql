CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occupied_status varchar(255),
  square_footage integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  floors integer,
  square_footage integer,
  cubicles_number integer,
  bathrooms integer,
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
  square_footage integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);
