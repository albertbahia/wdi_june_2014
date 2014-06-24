DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefront;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_num Integer,
  number_of_bedrooms Integer,
  number_of_bathrooms Integer,
  address varchar(255),
  tenant varchar(255),
  occupied_status boolean,
  square_footage Integer,
  price Integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_num Integer,
  number_of_floors Integer,
  square_footage Integer,
  number_of_cubicles Integer,
  number_of_bathrooms Integer,
  address varchar(255),
  company_name varchar(255),
  occupied_status boolean,
  price Integer
);

CREATE TABLE storefront (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  occupied_status boolean,
  price Integer,
  kitchen boolean,
  square_footage Integer,
  owner varchar(255),
  outdoors boolean
);
