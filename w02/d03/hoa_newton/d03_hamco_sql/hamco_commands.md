
SELECT AVG(square_footage) AS SquareFootage FROM offices;
SELECT SUM(apartment_no) FROM apartments ;
SELECT * FROM apartments WHERE tenant = null;
SELECT company_name FROM offices;
SELECT num_cubicles, num_bathroom FROM offices WHERE floors = 3;
SELECT * FROM storefronts WHERE kitchen = true;
SELECT MAX(square_footage) FROM storefronts WHERE outdoor_seating = true;
SELECT MIN(num_cubicles) FROM offices;
SELECT * FROM offices WHERE num_cubicles + num_bathroom = (SELECT MAX(num_cubicles + num_bathroom) FROM offices);