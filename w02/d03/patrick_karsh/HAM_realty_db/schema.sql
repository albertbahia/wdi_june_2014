DROP TABLE apartments;
DROP TABLE offices; 
DROP TABLE storefronts; 

CREATE TABLE apartments (
	id SERIAL PRIMARY KEY, 
	apartment_number integer, 
	number_baths integer, 
	number_beds integer, 
	address varchar(255), 
	a_tenant varchar(255), 
	occupied_status varchar(255),
	sq_footage varchar(255),
	price integer 
); 
CREATE TABLE offices (
	id SERIAL PRIMARY KEY,
	office_number integer, 
	floor_number integer, 
	sq_footage integer,
	cubicle_num integer, 
	number_bathrooms integer,  
	address varchar(255),
	company_name varchar(255),
	occupied_status varchar(255),
	price integer 

); 
CREATE TABLE storefronts (
	id SERIAL PRIMARY KEY,
	address varchar(255),
	occupied_status varchar(255), 
	price integer, 
	kitchen varchar(255),
	sq_footage integer, 
	owner varchar(255),	
	outdoor_seating varchar(255)
); 