#The average square footage of all offices.
SELECT AVG(square_footage) FROM offices;
#The total number of apartments.
SELECT COUNT(*) From apartments;
#The apartments where there is no tenant
SELECT * FROM apartments WHERE tenant is null;
#The names of all of the companies
SELECT company_name FROM offices;
#The number of cubicles and bathrooms in the 3rd office
SELECT (number_of_cubicles, number_of_bathrooms) FROM offices WHERE id = 9;
#The storefronts that have kitchens
SELECT * FROM storefront WHERE kitchen = true;
#The storefront with the highest square footage and outdoor seating
SELECT MAX(square_footage) FROM storefront;
#The office with the lowest number of cubicles
SELECT MIN(number_of_cubicles) FROM offices;
#The office with the most cubicles and bathrooms
SELECT MAX(number_of_cubicles + number_of_bathrooms) FROM offices;
