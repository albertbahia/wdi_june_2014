
#### Advanced Queries
Write queries to do the following:
* Retrieve all info on all tenants
* Retrieve the name, age, and gender of all tenants
* Retrieve all info on all tenants older than 65
* Retrieve all info on all tenants in apartment with id 20
* Retrieve all info on all tenants in apartment with ids 20 or 21
* Delete all tenants whose age is greater than 65
* Change all doormen from building 3 to work night shifts.

* Create one new tenant, put them in any apartment you want
* Find just the ids for all apartments for building with 2

* Find all info for apartments in building number 3 whose price is greater than $2300
* Geriatric Birthday! Update all tenants whose age is 90 to be 91
* Change all tenants ages to increase by 1
* Find all tenants who live in an apartment that costs more than $2300

#### Join Queries
* Demonstrate joining doormen with buildings.
* Demonstrate joining apartments with tenants (where id < 10);

SELECT * FROM tenants;
SELECT name, age, gender FROM tenants;
SELECT * FROM tenants WHERE age > 65;
SELECT * FROM tenants WHERE apartment_id=20;
SELECT * FROM tenants WHERE apartment_id=20 OR apartment_id=21;
DELETE FROM tenants WHERE age > 65;
UPDATE doormen SET shift='Night' WHERE building_id=3;

INSERT INTO tenants VALUES(5300, 'Elizabeth Chorizord', 3, 'Female', 39);
SELECT id FROM apartments WHERE building_id=2;
SELECT * FROM apartments JOIN buildings on apartments.building_id=buildings.id WHERE buildings.id=3 AND apartments.price>2300;
UPDATE tenants SET age=91 WHERE age=90;
UPDATE tenants SET age=age+1;
SELECT * FROM tenants JOIN apartments on tenants.apartment_id=apartments.id WHERE apartments.price>2300;
SELECT * FROM doormen INNER JOIN buildings on doormen.building_id=buildings.id;
SELECT * FROM apartments INNER JOIN tenants on tenants.apartment_id=apartments.id WHERE apartments.id<10;







