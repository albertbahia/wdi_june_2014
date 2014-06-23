SELECT * FROM tenants;
SELECT name, age, gender FROM tenants;
SELECT * FROM tenants WHERE age > 65;
SELECT * FROM tenants WHERE apartment_id=20;
SELECT * FROM tenants WHERE apartment_id = 20 OR apartment_id = 21;
UPDATE doormen SET shift = 'Night' WHERE shift != 'Night' AND building_id=3;
INSERT INTO tenants VALUES (5550, 'Roddy Piper', 64, 'Male');
SELECT id FROM buildings WHERE num_floors=2;
SELECT * FROM apartments WHERE building_id =3 AND price > $2300;  - not working
UPDATE tenants SET age=91 WHERE age=90;
UPDATE tenants SET age=age+1;
SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE price > $2300; - not working
SELECT * FROM doormen JOIN buildings ON doormen.building_id = buildings.id;
SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE apartment_id > 10;

==========================================

DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS doormen;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS tenants;

CREATE TYPE tenant_gender AS ENUM ('Male', 'Female');
CREATE TYPE doormen_shift AS ENUM ('Day', 'Afternoon', 'Night');

CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  address varchar(255),
  num_floors integer
);

CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  experience integer,
  shift doormen_shift,
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor integer,
  name varchar(255),
  price money,
  sqft integer,
  bedrooms integer,
  bathrooms integer,
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  age integer,
  gender tenant_gender,
  apartment_id integer REFERENCES apartments(id)
);

