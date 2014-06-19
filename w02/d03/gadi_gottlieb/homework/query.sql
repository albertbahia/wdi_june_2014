SELECT square_feet FROM offices;
SELECT id FROM apartments;
SELECT * FROM apartments WHERE status = 'vacant';
SELECT company_name FROM offices;
SELECT cubicles FROM offices WHERE id = 3;
SELECT * FROM storefronts WHERE kitchen = 'TRUE';
SELECT MAX(square_feet) FROM storefronts WHERE outdoor_seating = 'TRUE';
SELECT MIN(cubicles) FROM offices;
SELECT MAX(cubicles), MAX(bathrooms) FROM offices;
