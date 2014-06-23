DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_num integer,
  bedroom_num integer,
  bathroom_num integer,
  address varchar(255),
  tenant_name varchar(255),
  occupied_status varchar(255),
  sq_footage integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_num integer,
  num_floors integer,
  sq_footage integer,
  num_cubicles integer,
  bathroom_num integer,
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
  kitchen_present varchar(255),
  sq_footage integer,
  owner_present varchar(255),
  outdoor_seating_present varchar(255)
);
