DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

  
CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_number integer,
  number_of_rooms integer,
  number_of_baths integer,
  address varchar(255),
  tenant integer,
  occupied_status  varchar(255),
  sq_footage integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  number_of_floors integer,
  sq_footage integer,
  number_of_cubes integer,
  number_of_baths integer,
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
  sq_footage integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);

