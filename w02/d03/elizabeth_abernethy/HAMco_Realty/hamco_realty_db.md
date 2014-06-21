###The average square footage of all offices.
SELECT avg(sq_ft) FROM offices;

###The total number of apartments.
SELECT count(apartments) FROM apartments;

###The apartments where there is no tenant
SELECT * FROM apartments WHERE occupancy='Vacant';

###The names of all of the companies
SELECT company_name FROM offices;

###The number of cubicles and bathrooms in the 3rd office
SELECT number_of_cubicles, num_bathrooms FROM offices WHERE id=3;

###The storefronts that have kitchens
SELECT * FROM storefronts WHERE kitchen='yes';

###The storefront with the highest square footage and outdoor seating
SELECT * FROM storefronts WHERE outdoor_seating='yes' AND sq_ft = (SELECT MAX(sq_ft) FROM storefronts WHERE outdoor_seating='yes');

###The office with the lowest number of cubicles
SELECT * FROM offices WHERE number_of_cubicles = (SELECT min(number_of_cubicles) FROM offices);

###The office with the most cubicles and bathrooms
SELECT * FROM offices WHERE number_of_cubicles = (SELECT max(number_of_cubicles) FROM offices) AND num_bathrooms = (SELECT max(num_bathrooms) FROM offices);






DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_num integer,
  num_bedrooms integer,
  num_bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occupancy varchar(255),
  sq_ft integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  num_floors integer,
  sq_ft integer,
  number_of_cubicles integer,
  num_bathrooms integer,
  address varchar(255),
  company_name varchar(255),
  occupancy varchar(255),
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  occupancy varchar(255),
  price integer,
  kitchen varchar(255),
  sq_ft integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);






TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupancy, sq_ft, price) VALUES (1055, 1, 1, 'W 29th Street, Chelsea, NYC', 'Seth', 'Occupied', 400, 3500);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupancy, sq_ft, price) VALUES (3, 2, 1, 'Water Street, Financial District, NYC', null, 'Vacant', 600, 2500);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupancy, sq_ft, price) VALUES (14, 3, 2, 'Kent Street, Williamsburg, NYC', null, 'Vacant', 750, 1400);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupancy, sq_ft, price) VALUES (9, 4, 3, 'E 73rd Street, Upper East Side, NYC', 'Alice', 'Occupied', 650, 5000);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupancy, sq_ft, price) VALUES (2, 1, 1, 'Spring Street, SoHo, NYC', 'Chad', 'Occupied', 450, 3800);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupancy, sq_ft, price) VALUES (192, 3, 3, 'W 110th Street, Upper West Side, NYC', null, 'Vacant', 600, 2000);

INSERT INTO offices (office_number, num_floors, sq_ft, number_of_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (13, 70, 50000, 1000, 30, '33rd Street, Midtown, NYC', 'Vibrant Media Co.', 'Occupied', 300000000);
INSERT INTO offices (office_number, num_floors, sq_ft, number_of_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (700, 5, 2500, 300, 2, 'E 21st Street, Gramercy, NYC', null, 'Vacant', 250000);
INSERT INTO offices (office_number, num_floors, sq_ft, number_of_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (239, 15, 7000, 600, 10, '23rd Street, Flatiron, NYC', 'Lovely Baked Goods', 'Occupied', 400000);
INSERT INTO offices (office_number, num_floors, sq_ft, number_of_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (481, 10, 5000, 500, 7, 'Grand Street, Lower East Side, NYC', null, 'Vacant', 350000);
INSERT INTO offices (office_number, num_floors, sq_ft, number_of_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (1, 45, 25000, 700, 20, 'W 39th Street, Midtown West, NYC', 'Atlantis Corp.', 'Occupied', 150000000);
INSERT INTO offices (office_number, num_floors, sq_ft, number_of_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (8, 30, 2000, 150, 15, 'E 35th Street, Kips Bay, NYC', 'Specific Assemb.ly', 'Occupied', 100000);


INSERT INTO storefronts (address, occupancy, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('E 95th Street, Upper East Side, NYC', 'Occupied', 450000, 'yes', 7000, 'Kim', 'yes');
INSERT INTO storefronts (address, occupancy, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('Gold Street, Financial District, NYC', 'Vacant', 190000, 'no', 3500, null, 'no');
INSERT INTO storefronts (address, occupancy, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('Mercer Street, SoHo, NYC', 'Vacant', 175000, 'yes', 5000, null, 'no');
INSERT INTO storefronts (address, occupancy, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('W 23rd Street, Chelsea, NYC', 'Vacant', 25000, 'yes', 3000, null, 'yes');
INSERT INTO storefronts (address, occupancy, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('Kent Street, Williamsburg, NYC', 'Occupied', 85000, 'no', 4500, 'Kim', 'yes');
INSERT INTO storefronts (address, occupancy, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('Bedford Ave, Williamsburg, NYC', 'Occupied', 9000, 'no', 2000, 'Kim', 'yes');
