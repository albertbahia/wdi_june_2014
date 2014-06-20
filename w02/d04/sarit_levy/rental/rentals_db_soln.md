#### Write queries to do the following:

1. Retrieve all info on all tenants
  SELECT * FROM tenants;

2. Retrieve the name, age, and gender of all tenants
  SELECT name, age, gender FROM tenants;

3. Retrieve all info on all tenants older than 65
  SELECT * FROM tenants WHERE age > 65;

4. Retrieve all info on all tenants in apartment with id 20
  SELECT * FROM tenants WHERE apartment_id = 20;

5. Retrieve all info on all tenants in apartment with ids 20 or 21
  SELECT * FROM tenants WHERE apartment_id = 20 OR apartment_id = 21;

6. Change all doormen from building 3 to work night shifts.
  UPDATE doormen SET shift = 'Night' WHERE building_id = 3;

7. Create one new tenant, put them in any apartment you want
  INSERT INTO tenants (id, name, age, gender, apartment_id) VALUES (5357, 'Harry Reid', 37, 'Male', 677);

8. Find just the ids for all apartments for building with 2
  SELECT id FROM apartments WHERE building_id = 2;

9. Find all info for apartments in building number 3 whose price is greater than $2300
  SELECT * FROM apartments WHERE building_id =3 AND price > 2300;

10. Geriatric Birthday! Update all tenants whose age is 90 to be 91
  UPDATE tenants SET age = 91 WHERE age = 90;

11. Change all tenants ages to increase by 1
  UPDATE tenants SET age = age + 1;

12. Find all tenants who live in an apartment that costs more than $2300
  SELECT * FROM tenants JOIN apartments on tenants.apartment_id = apartments.price WHERE apartments.price > 2300;

13. Delete all tenants whose age is greater than 65
  DELETE FROM tenants WHERE age > 65;


#### Join Queries
14.  Demonstrate joining doormen with buildings.
  SELECT * FROM doormen JOIN buildings on doormen.building_id = buildings.id;

15.  Demonstrate joining apartments with tenants (where id < 10); -Not sure if this is requesting tenant id or apartment id
  SELECT * FROM tenants JOIN apartments on tenants.apartment_id = apartments.id WHERE tenants.id < 10;
  or
  SELECT * FROM apartments JOIN tenants on apartments.id = tenants.apartment_id WHERE apartments.id < 10;
  SELECT * FROM apartments JOIN tenants on tenants.apartment_id = apartments.id WHERE id < 10;
