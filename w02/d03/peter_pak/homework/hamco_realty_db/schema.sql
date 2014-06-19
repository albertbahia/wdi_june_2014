DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_number INTEGER NOT NULL,
  bedrooms INTEGER NOT NULL,
  bathrooms INTEGER NOT NULL,
  address VARCHAR(255) NOT NULL,
  tenant VARCHAR(255),
  status VARCHAR(255) NOT NULL,
  square_footage INTEGER NOT NULL,
  price INTEGER
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number INTEGER NOT NULL,
  floors INTEGER NOT NULL,
  square_footage INTEGER NOT NULL,
  cubicles INTEGER,
  bathrooms INTEGER,
  address VARCHAR(255) NOT NULL,
  company_name VARCHAR(255),
  status VARCHAR(255) NOT NULL,
  price INTEGER
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address VARCHAR(255) NOT NULL,
  tenant VARCHAR(255),
  status VARCHAR(255) NOT NULL,
  price INTEGER,
  kitchen BOOLEAN NOT NULL,
  square_footage INTEGER NOT NULL,
  owner VARCHAR(255),
  outdoor_seating BOOLEAN NOT NULL
);





-- -- , define a schema for three tables:
--
-- - Apartments
--  - An Apartment should have:
--    - a unique id
--    - an apartment number
--    - number of bedrooms
--    - number of bathrooms
--    - an address
--    - a tenant
--    - an occupied status
--    - a square footage
--    - a price
-- - Offices
--  - An office should have:
--    - a unique id
--    - an office number
--    - a number of floors
--    - a square footage
--    - a number of cubicles
--    - a number of bathrooms
--    - an address
--    - a company name
--    - an occupied status
--    - a price
-- - Storefronts
--  - A storefront should have:
--    - a unique id
--    - an address
--    - an occupied status
--    - a price
--    - whether there is a kitchen or not
--    - a square footage
--    - an owner
--    - whether there is outdoor seating or not
