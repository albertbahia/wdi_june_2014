

SELECT AVG(square_footage) FROM apartments;
SELECT COUNT(id) FROM apartments;
SELECT * FROM apartments where occupancy_status = 'unoccupied';
SELECT company_name FROM offices;
SELECT * FROM (
  SELECT
    ROW_NUMBER() OVER (ORDER BY id ASC) AS rownumber,
    *
  FROM offices
) AS foo
WHERE rownumber = 3;
SELECT * FROM storefronts WHERE kitchen_available = true;
- The office with the lowest number of cubicles
SELECT * FROM offices WHERE number_of_cubicles = (SELECT MIN(number_of_cubicles) FROM offices);
- The storefront with the highest square footage and outdoor seating
SELECT * FROM storefronts WHERE outdoor_seating = true AND square_footage = (SELECT MAX(square_footage)
FROM storefronts);
- The office with the most cubicles and bathrooms
SELECT * FROM offices ORDER BY number_of_cubicles DESC, number_of_bathrooms LIMIT 1;
