--Retrieve all info on all tenants
SELECT *
FROM tenants;

--Retrieve the name, age, and gender of all tenants
SELECT name, age, gender
FROM tenants;

--Retrieve all info on all tenants older than 65
SELECT *
FROM tenants
WHERE age > 65;

--Retrieve all info on all tenants in apartment with id 20
SELECT *
FROM tenants
JOIN apartments
ON tenants.apartment_id = apartments.id
WHERE apartments.id = 20;

--Retrieve all info on all tenants in apartment with ids 20 or 21
SELECT *
FROM tenants
JOIN apartments
ON tenants.apartment_id = apartments.id
WHERE apartments.id = 20 OR apartments.id = 21;

--HAVE TO CHANGE TO UPDATE
--Change all doormen from building 3 to work night shifts.
SELECT *
FROM doormen
WHERE building_id = 3 AND shift = 'Night';

--Create one new tenant, put them in any apartment you want
--INSERT INTO tenants (id, name, age, gender, apartment_id) VALUES (999, 'Khadijah TheGreat', 22, 'Female', 1);

--Find just the ids for all apartments for building with 2
SELECT id
FROM apartments
WHERE building_id = 2;

--Find all info for apartments in building number 3 whose price is greater than $2300
SELECT *
FROM apartments
WHERE building_id = 3 AND price > 2300;

--UPDATE
--Geriatric Birthday! Update all tenants whose age is 90 to be 91
SELECT *
FROM tenants
WHERE age = 90;


--UPDATE
--Change all tenants ages to increase by 1
SELECT age+1
FROM tenants;

--Find all tenants who live in an apartment that costs more than $2300
SELECT tenants.name
FROM tenants
JOIN apartments
ON apartments.id = tenants.apartment_id
WHERE price > 2300;

--DELETE
--Delete all tenants whose age is greater than 65
SELECT *
FROM tenants
WHERE age > 65;


--Demonstrate joining doormen with buildings.
SELECT shift, COUNT(*)
FROM doormen
JOIN buildings
ON buildings.id = doormen.building_id
GROUP BY shift;


--Demonstrate joining apartments with tenants (where id < 10)
SELECT apartments.id, COUNT(tenants)
FROM apartments
JOIN tenants
ON tenants.apartment_id = apartments.id
WHERE apartments.id < 10
GROUP BY apartments.id;
