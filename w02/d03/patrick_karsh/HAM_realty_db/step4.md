### Step 4 - Query!

- The average square footage of all offices.
	
	SELECT AVG 'sq_footage' FROM 'offices';

- The total number of apartments.

	 SELECT COUNT ("id") FROM "apartments"; 

- The apartments where there is no tenant
	
	SELECT * FROM  apartment WHERE a_tenant = null; 

- The names of all of the companies

	SELECT company_name FROM offices;

- The number of cubicles and bathrooms in the 3rd office

- The storefronts that have kitchens
	
	SELECT * FROM storefronts WHERE kitchen = 'yes';

- The storefront with the highest square footage and outdoor seating
	SELECT MAX ("sq_footage") FROM "storefronts" WHERE "outdoor_seating" = 'yes' AND "kitchen" = 'yes' ;
- The office with the lowest number of cubicles
	SELECT MIN ("cubicle_num") FROM "offices";

- The office with the most cubicles and bathrooms
SELECT MAX( "cubicle_num" + "number_bathrooms") FROM "offices";