SELECT * FROM tenants;
SELECT name, age, gender FROM tenants;
SELECT * FROM tenants WHERE age > 65;
SELECT * FROM tenants WHERE id = 20;
SELECT * FROM tenants WHERE id = 20 OR id = 21;
UPDATE doormen SET shift = 'Night' WHERE shift = 'Day' AND building_id = 3;
INSERT INTO tenants (id, name, age, gender, apartment_id) VALUES (5430, 'Gadi Gottlieb', 24, 'Male', 2000);
SELECT id FROM apartments WHERE building_id = 2;
SELECT * FROM apartments WHERE building_id = 3 AND price > 2300;
UPDATE tenants SET age = 91 WHERE age = 90;
DELETE FROM tenants WHERE age > 65;
UPDATE tenants SET age = age + 1;
SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE price > 2300;
SELECT * FROM doormen JOIN buildings ON doormen.building_id = buildings.id;
SELECT * FROM apartments JOIN tenants ON apartments.id = tenants.apartment_id WHERE tenants.id < 10;
