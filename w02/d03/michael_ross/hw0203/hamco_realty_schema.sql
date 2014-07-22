CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_no integer,
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
  office_no integer,
  floors_no integer,
  square_footage integer,
  cubicles integer,
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
  kitchen boolean,
  square_footage integer,
  owner varchar(255),
  outdoor_seating boolean
);
