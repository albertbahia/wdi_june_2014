DROP TABLE apartments;
DROP TABLE buildings;
DROP TABLE tenants;

CREATE TABLE apartments(
  name VARCHAR(255),
  floor INTEGER,
  price INTEGER,
  sqftage INTEGER,
  bedrooms INTEGER,
  bathrooms INTEGER,
  tenants INTEGER
);

CREATE TABLE buildings(
  name VARCHAR(255),
  address VARCHAR(255),
  floors INTEGER,
  apartments INTEGER
);

CREATE TABLE tenants(
  name VARCHAR(255),
  age INTEGER,
  gender VARCHAR(10)
);
