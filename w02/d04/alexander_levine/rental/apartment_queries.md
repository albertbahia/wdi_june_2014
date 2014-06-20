SELECT * FROM tenants;
SELECT (name, age, gender) FROM tenants;
SELECT * FROM tenants WHERE age>65;
SELECT * FROM tenants WHERE apartment_id=20;
SELECT * FROM tenants WHERE apartment_id=20 OR apartment_id=21;
DELETE * FROM tenants WHERE age>65;
UPDATE doormen SET shift='Night' WHERE building_id=3 AND shift='Day';
INSERT INTO tenants (id, name, age, gender, apartment_id) VALUES (10000, 'Alex Levine', 10, 'Female', 72);
SELECT apartments.id FROM apartments JOIN buildings on apartments.building_id = buildings.id WHERE building_id=2;
SELECT * FROM apartments JOIN buildings on apartments.building_id = buildings.id WHERE buildings.id=3 AND price>2300;
UPDATE tenants SET age=91 WHERE age=90;
UPDATE tenants SET age=age+1;
SELECT tenants FROM tenants JOIN apartments on tenants.apartment_id = apartments.id WHERE price>2300;

JOINING

SELECT tenants FROM tenants JOIN apartments on tenants_apartment_id = apartments.id JOIN apartments.building.id = buildings.id
SELECT * FROM tenants JOIN apartments on tenants.apartment_id = apartments.id WHERE tenants.apartment_id < 10;
