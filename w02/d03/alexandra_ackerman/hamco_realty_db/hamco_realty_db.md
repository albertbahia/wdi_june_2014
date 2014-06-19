SELECT avg(sq_ft) FROM offices;
SELECT count(apartments) FROM apartments;
SELECT * FROM apartments WHERE occupancy = 'Vacant';
SELECT company_name FROM offices;
SELECT num_cubicles, num_bathrooms FROM offices WHERE id = 3;
SELECT * FROM storefronts WHERE kitchen_status = 'Yes';
SELECT * FROM storefronts WHERE outdoor_seating = 'Yes' AND sq_ft = (SELECT max(sq_ft) FROM storefronts WHERE outdoor_seating = 'Yes');
SELECT * FROM offices WHERE num_cubicles = (SELECT min(num_cubicles) FROM offices);
SELECT * FROM offices WHERE num_cubicles = (SELECT max(num_cubicles) FROM offices) AND num_bathrooms = (SELECT max(num_bathrooms) FROM offices);



DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_num integer,
  num_bedrooms integer,
  num_bathrooms integer,
  address varchar(255),
  tenant_name varchar(255),
  occupancy varchar(255),
  sq_ft integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_num integer,
  num_floors integer,
  sq_ft integer,
  num_cubicles integer,
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
  kitchen_status varchar(255),
  sq_ft integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);

TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant_name, occupancy, sq_ft, price) VALUES (120, 3, 2, '129 90th Street', 'John', 'Occupied', 950, 2000);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant_name, occupancy, sq_ft, price) VALUES (90, 2, 1, '150 80th Street', 'Gina', 'Occupied', 2000, 9000);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant_name, occupancy, sq_ft, price) VALUES (45, 10, 4, '30 77th Street', 'Alexandra', 'Occupied', 1250, 4200);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant_name, occupancy, sq_ft, price) VALUES (30, 4, 3, '42 42nd Street', null, 'Vacant', 1000, 2600);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant_name, occupancy, sq_ft, price) VALUES (2, 1, 1, '190 52nd Street', 'Bill', 'Occupied', 700, 2500);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant_name, occupancy, sq_ft, price) VALUES (1, 7, 5, '123 3rd Street', null, 'Vacant', 650, 3200);

INSERT INTO offices (office_num, num_floors, sq_ft, num_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (1, 5, 2000, 50, 5, '16 17th Street', 'Meetup', 'Occupied', 9500);
INSERT INTO offices (office_num, num_floors, sq_ft, num_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (22, 15, 10000, 100, 5, '5 118th Street', 'GA', 'Occupied', 10000);
INSERT INTO offices (office_num, num_floors, sq_ft, num_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (34, 10, 2500, 20, 5, '10 30th Street', 'Yelp', 'Occupied', 900);
INSERT INTO offices (office_num, num_floors, sq_ft, num_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (50, 11, 11000, 150, 5, '56 90th Street', null, 'Vacant', 840);
INSERT INTO offices (office_num, num_floors, sq_ft, num_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (3, 7, 3000, 50, 35, '82 Broadway', 'Yum Yum', 'Occupied', 2500);
INSERT INTO offices (office_num, num_floors, sq_ft, num_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (5, 6, 5000, 50, 45, '100 Lexington', 'Seamless', 'Occupied', 1900);
INSERT INTO offices (office_num, num_floors, sq_ft, num_cubicles, num_bathrooms, address, company_name, occupancy, price) VALUES (90, 2, 4000, 50, 20, '910 20th Street', null, 'Vacant', 8400);

INSERT INTO storefronts (address, occupancy, price, kitchen_status, sq_ft, owner, outdoor_seating) VALUES ('90 45th Street', 'Occupied', 1200, 'Yes', 1550, 'Gina', 'No');
INSERT INTO storefronts (address, occupancy, price, kitchen_status, sq_ft, owner, outdoor_seating) VALUES ('120 90th Street', 'Occupied', 3500, 'No', 2300, 'Harold', 'Yes');
INSERT INTO storefronts (address, occupancy, price, kitchen_status, sq_ft, owner, outdoor_seating) VALUES ('2 5th Street', 'Occupied', 4400, 'Yes', 10000, 'Bobby', 'No');
INSERT INTO storefronts (address, occupancy, price, kitchen_status, sq_ft, owner, outdoor_seating) VALUES ('40 Hammer Lane', 'Vacant', 700, 'Yes', 5490, null, 'No');
INSERT INTO storefronts (address, occupancy, price, kitchen_status, sq_ft, owner, outdoor_seating) VALUES ('1022 Horton Pl', 'Occupied', 2000, 'No', 1250, 'George', 'Yes');
INSERT INTO storefronts (address, occupancy, price, kitchen_status, sq_ft, owner, outdoor_seating) VALUES ('950 Horizontal Ave', 'Vacant', 500000, 'Yes', 10000, null, 'No');
