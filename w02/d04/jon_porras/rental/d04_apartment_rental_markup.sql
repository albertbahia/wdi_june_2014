Write queries to do the following:
* Retrieve all info on all tenants
SELECT * FROM tenants;

* Retrieve the name, age, and gender of all tenants
SELECT tenants.name, tenants.age, tenants.gender FROM tenants;

* Retrieve all info on all tenants older than 65
SELECT * FROM tenants WHERE tenants.age > 65;

* Retrieve all info on all tenants in apartment with id 20
SELECT * FROM tenants WHERE tenants.apartment_id = 20;

* Retrieve all info on all tenants in apartment with ids 20 or 21
SELECT * FROM tenants WHERE tenants.apartment_id = 20 OR tenants.apartment_id = 21;

* Delete all tenants whose age is greater than 65


* Change all doormen from building 3 to work night shifts.
UPDATE doormen SET shift = 'Night' WHERE building_id = 3;

* Create one new tenant, put them in any apartment you want
INSERT INTO tenants VALUES (5356, 'Jon', 28, 'Male', 416);

* Find just the ids for all apartments for building with 2
SELECT id FROM apartments WHERE building_id = 2;

* Find all info for apartments in building number 3 whose price is greater than $2300
SELECT * FROM apartments WHERE building_id = 3 AND price > 2300;

* Geriatric Birthday! Update all tenants whose age is 90 to be 91
UPDATE tenants SET age = 91 WHERE age = 90;

* Change all tenants ages to increase by 1
UPDATE tenants SET age = age + 1;

* Find all tenants who live in an apartment that costs more than $2300
SELECT * FROM tenants where apartment_id in (select id from apartments where price > 2300);

#### Join Queries
* Demonstrate joining doormen with buildings.
SELECT * FROM doormen JOIN buildings ON doormen.building_id = buildings.id;

* Demonstrate joining apartments with tenants (where id < 10);
SELECT * FROM apartments JOIN tenants ON apartments.id = tenants.id WHERE tenants.id < 10;


#Schema

DROP TABLE IF EXISTS doormen;
DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS buildings;


CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name varchar(512),
  address varchar(512),
  num_floors integer
);

CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name varchar(512),
  experience integer,
  shift varchar(512),
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor integer,
  name integer,
  price integer,
  sqft integer,
  bedrooms integer,
  bathrooms integer,
  building_id INTEGER REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name varchar(512),
  age integer,
  gender varchar(512),
  apartment_id INTEGER REFERENCES apartments(id)
);
