Homework 02-04

#### Learning Objectives
- Practice working with a relational database
- Practice defining relationships between tables
  - one to many
- Practice drawing ERD's
- Practice defining schemas and seeding a database

# HAMco Realty 2.0
You assignment tonight is to build a database representing HAMco's apartment buildings. These buildings will have apartments, tenants, and doormen. The first step will be to draw ERD's in order to establish the relationships and help you build your schema. Think about what datatype would best represent the columns in your table. [LinkLove - PSQL datatypes](http://www.postgresql.org/docs/9.3/static/datatype.html)

### Apartment Rentals

#### Step 1 - ERD

Draw the ERD for Apartments, Buildings, Tenants, and Doormen. What relationship exists between these tables? Which tables should have a foreign key?
__Take a picture and send it to me or use an ERD modeler on the internet and send that link. DO NOT ADD PICTURES TO THE REPO__

###### Building
- a building has a unique ID
- a name
- an address
- a number of floors

###### Apartment
- an apartment has a unique id
- a floor
- a name
- a price
- a square footage
- a number of bedrooms
- a number of bathrooms

###### Tenants
- a tenant has a unique id
- a name
- an age
- a gender

###### Doormen
- a doorman has a unique id
- a name
- years of experience
- a shift

#### Create the DB / Schema
After establishing the proper relationships and drawing your ERDs create your database. Create your schema for all of the tables and load it into your database.

#### Import Seed Data
Take a look at the ruby seed file that was given, read through the code before you run it. Try to make sense of what it is doing. Run the ruby seed file in YOUR homework folder. Use the output to seed your database  .

#### Advanced Queries
Write queries to do the following:
* Retrieve all info on all tenants
-- SELECT * FROM tenants;

* Retrieve the name, age, and gender of all tenants
-- SELECT (name, age, gender) FROM tenants;

* Retrieve all info on all tenants older than 65
-- SELECT * FROM tenants WHERE age > 65;

* Retrieve all info on all tenants in apartment with id 20
-- SELECT * FROM tenants WHERE apartment_id=20;

* Retrieve all info on all tenants in apartment with ids 20 or 21
-- SELECT * FROM tenants WHERE apartment_id=20 OR apartment_id=21;

* Delete all tenants whose age is greater than 65
-- DELETE FROM tenants WHERE age > 65;

* Change all doormen from building 3 to work night shifts.
-- UPDATE doormen SET shift='Night' WHERE building_id=3;

* Create one new tenant, put them in any apartment you want
-- INSERT INTO tenants (name, age, gender, apartment_id) VALUES ('Sansa Stark', 14, 'Female', 20);

* Find just the ids for all apartments for building with 2
-- SELECT (id) FROM apartments WHERE building_id=2;

* Find all info for apartments in building number 3 whose price is greater than $2300
-- SELECT * FROM apartments WHERE building_id=3 AND price > 2300;

* Geriatric Birthday! Update all tenants whose age is 90 to be 91
-- UPDATE tenants SET age=91 WHERE age=90;

* Change all tenants ages to increase by 1
-- UPDATE tenants SET age = age + 1;

* Find all tenants who live in an apartment that costs more than $2300
-- SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE apartments.price > 2300;


#### Join Queries
* Demonstrate joining doormen with buildings.
-- SELECT * FROM doormen JOIN buildings ON doormen.building_id = buildings.id;

* Demonstrate joining apartments with tenants (where id < 10);
-- SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE tenants.id < 10;




<!----- SCHEMA: hamco_realtyV2_schema.sql ----->

DROP TABLE doormen;
DROP TABLE tenants;
DROP TABLE apartments;
DROP TABLE buildings;


CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  address varchar(512),
  num_floors integer
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  floor integer,
  name varchar(255),
  price integer,
  sqft integer,
  bedrooms integer,
  bathrooms integer,
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  age integer,
  gender varchar(255),
  apartment_id integer REFERENCES apartments(id)
);

CREATE TABLE doormen (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  experience integer,
  shift varchar(255),
  building_id integer REFERENCES buildings(id)
);

<!----- End of file  ----->