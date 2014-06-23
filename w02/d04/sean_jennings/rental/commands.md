Write queries to do the following:

1-Retrieve all info on all tenants
  SELECT *
  FROM tenants;
*
2-Retrieve the name, age, and gender of all tenants
  SELECT name, age, gender
  FROM tenants;

3-Retrieve all info on all tenants older than 65
  SELECT *
  FROM tenants
  WHERE age > 65;
*
4-Retrieve all info on all tenants in apartment with id 20
  SELECT *
  FROM tenants
  WHERE apartment_id=20;

5-Retrieve all info on all tenants in apartment with ids 20 or 21
  SELECT *
  FROM tenants
  WHERE apartment_id=20 OR apartment_id=21;

6-Delete all tenants whose age is greater than 65
  DELETE FROM tenants
  WHERE age > 65;

7-Change all doormen from building 3 to work night shifts.
  UPDATE doormen
  SET shift='Night'
  WHERE building_id=3;

8-Create one new tenant, put them in any apartment you want
  INSERT INTO tenants
  VALUES (5343,'Joe',32,'Male',2000);

9-Find just the ids for all apartments with building_id=2
  SELECT *
  FROM apartments
  WHERE building_id=2;

10-Find all info for apartments in building number 3 whose price is greater than $2300
  SELECT *
  FROM apartments
  WHERE building_id=3 AND price > 2300;
*
11-Geriatric Birthday! Update all tenants whose age is 90 to be 91
  UPDATE tenants
  SET age=91
  WHERE age=90;

12-Change all tenants ages to increase by 1
  UPDATE tenants
  SET age = age + 1;

13-Find all tenants who live in an apartment that costs more than $2300
  SELECT *
  FROM tenants JOIN apartments
  ON tenants.apartments = apartments.id
  WHERE price > 2300;

  Demonstrate joining doormen with buildings.
  FROM doormen JOIN apartments
  ON doormen.apartments = apartments.id

* Demonstrate joining apartments with tenants (where id < 10);
  SELECT *
  FROM tenants JOIN apartments
  ON tenants.apartments = apartments.id
  WHERE apartment_id > 10;
