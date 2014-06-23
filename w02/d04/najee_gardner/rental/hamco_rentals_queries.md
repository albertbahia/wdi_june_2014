-- Advanced Queries
SELECT * FROM tenants;
SELECT name, age, gender FROM tenants;
SELECT * FROM tenants WHERE age > 65;
SELECT * FROM tenants WHERE apartment_id = 20;
SELECT * FROM tenants WHERE apartment_id IN (20, 21);
UPDATE doormen SET shift = 'Night' WHERE building_id = 3;
INSERT INTO tenants (id, name, age, gender, apartment_id) VALUES (5434, 'Forrest Gump', 44, 'Male', 1988);
SELECT id FROM apartments WHERE building_id = 2;
SELECT * FROM apartments WHERE building_id = 3 AND price > 2300;
UPDATE tenants SET age = age + 1 WHERE age = 90;
UPDATE tenants SET age = age + 1;
SELECT tenants.* FROM tenants JOIN apartments ON apartments.id = tenants.apartment_id WHERE apartments.price > 2300;
DELETE FROM tenants WHERE age > 65;

-- Join Queries
SELECT * FROM doormen JOIN buildings ON doormen.building_id = buildings.id;
SELECT * FROM apartments JOIN tenants ON apartments.id = tenants.apartment_id WHERE tenants.id < 10;
