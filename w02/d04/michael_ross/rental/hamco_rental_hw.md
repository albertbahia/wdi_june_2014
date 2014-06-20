SELECT * FROM tenants;
SELECT (name, age, gender) FROM tenants;
SELECT * FROM tenants WHERE age > 65;
SELECT * FROM tenants WHERE apartment_id = 20;
SELECT * FROM tenants WHERE apartment_id = 20 OR apartment_id = 21;
UPDATE doormen SET shift = 'Night' WHERE building_id = 3;
INSERT INTO tenants (name, age, gender) VALUES ('John Hamm', 56, 'Male');
# The above statement receives error "duplicate key value violates unique constraint".  Could not figure way around.  
SELECT * FROM apartments WHERE building_id = 3 AND price > 2300;
UPDATE tenants SET age = 91 WHERE age = 90;
DELETE FROM tenants WHERE age > 65;
UPDATE tenants SET age = age + 1;
SELECT * FROM apartments WHERE price > 2300;
