-- - The average square footage of all offices.
-- - The total number of apartments.
-- - The apartments where there is no tenant
-- - The names of all of the companies
-- - The number of cubicles and bathrooms in the 3rd office
-- - The storefronts that have kitchens
-- - The storefront with the highest square footage and outdoor seating
-- - The office with the lowest number of cubicles
-- - The office with the most cubicles and bathrooms
--
-- __hint__: some of the commands we did not go over in class. W3 schools has an awesome guide for sql commands :wink:

SELECT AVG(square_footage) AS average_square_foot FROM offices;
SELECT COUNT(id) FROM apartments;
SELECT * FROM apartments WHERE tenant IS NULL;
SELECT company_name FROM offices;
SELECT cubicles, bathrooms FROM offices WHERE id = 3;
SELECT * FROM storefronts WHERE kitchen IS TRUE;
SELECT * FROM storefronts WHERE square_footage = (SELECT MAX(square_footage) FROM storefronts WHERE outdoor_seating IS TRUE);
SELECT * FROM offices WHERE cubicles = (SELECT MIN(cubicles) FROM offices);
SELECT * FROM offices WHERE cubicles = (SELECT MAX(cubicles) FROM offices) AND bathrooms = (SELECT MAX(bathrooms) FROM offices);
