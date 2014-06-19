1. SELECT AVG(sq_ft) FROM offices;
2. SELECT SUM(id) AS TotalApartments FROM apartments;
3. SELECT apt_no FROM apartments WHERE status='Vacant';
4. SELECT company FROM offices;
5. SELECT SUM(cubicles) FROM offices WHERE id=3
   UNION
   SELECT SUM (bathrooms) FROM offices WHERE id=3;
6. SELECT has_kitchen FROM storefronts WHERE status='True';
7. SELECT MAX(sq_ft) FROM storefronts WHERE has_outdoor_seating = 'TRUE';
8. MIN(cubicles) FROM offices;
9. SELECT MAX(cubicles) FROM offices
   UNION
   SELECT MAX(bathrooms) FROM offices;
