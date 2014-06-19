- The average square footage of all offices.
SELECT AVG(sq_foot) FROM offices;

- The total number of apartments.
SELECT COUNT(id) FROM apartments;

- The apartments where there is no tenant
SELECT * FROM apartments WHERE tenant='vacant';

- The names of all of the companies
SELECT company_name FROM offices;

- The number of cubicles and bathrooms in the 3rd office
SELECT no_cubicles, no_bathrooms FROM offices WHERE id=3;

- The storefronts that have kitchens
SELECT * FROM storefronts WHERE kitchen='yes';

- The storefront with the highest square footage and outdoor seating
SELECT * FROM storefronts WHERE sq_foot = (SELECT MAX(sq_foot) FROM storefronts WHERE outdoor_seating='yes')

- The office with the lowest number of cubicles
SELECT * FROM offices WHERE no_cubicles = (SELECT MIN(no_cubicles) FROM offices);

The office with the most cubicles and bathrooms
SELECT * FROM offices WHERE no_cubicles = (SELECT MAX(no_cubicles) FROM offices) AND no_bathrooms = (SELECT MAX(no_bathrooms) FROM offices);


<!------------hamco_realty_schema.sql------------->
DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_no integer NOT NULL,
  no_bedrooms integer,
  no_bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  status varchar(255),
  sq_foot integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_no varchar(255),
  no_floors integer,
  sq_foot integer,
  no_cubicles integer,
  no_bathrooms integer,
  address varchar(255),
  company_name varchar(255),
  status varchar(255),
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  status varchar(255),
  price integer,
  kitchen varchar (255),
  sq_foot integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);
<!-------- End of file ---------->






<!---------- hamco_realty_seed.sql ----------->
TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_no, no_bedrooms, no_bathrooms, address, tenant, status, sq_foot, price) VALUES (1, 2, 3, '10 Main Ave', 'John', 'occupied', 2000, 1500);
INSERT INTO apartments (apt_no, no_bedrooms, no_bathrooms, address, tenant, status, sq_foot, price) VALUES (2, 4, 1, '20 Main Ave', 'vacant', 'vacant', 3000, 2500);
INSERT INTO apartments (apt_no, no_bedrooms, no_bathrooms, address, tenant, status, sq_foot, price) VALUES (3, 5, 4, '30 Main Ave', 'Oberin', 'occupied', 4000, 3500);
INSERT INTO apartments (apt_no, no_bedrooms, no_bathrooms, address, tenant, status, sq_foot, price) VALUES (9, 7, 5, '40 Main Ave', 'Sansa', 'vacant', 5000, 4500);
INSERT INTO apartments (apt_no, no_bedrooms, no_bathrooms, address, tenant, status, sq_foot, price) VALUES (10, 1, 10, '50 Main Ave', 'vacant', 'vacant', 6000, 5500);
INSERT INTO apartments (apt_no, no_bedrooms, no_bathrooms, address, tenant, status, sq_foot, price) VALUES (11, 3, 15, '60 Main Ave', 'Jora', 'vacant', 7000, 6500);



INSERT INTO offices (office_no, no_floors, sq_foot, no_cubicles, no_bathrooms, address, company_name, status, price) VALUES (1, 2, 3000, 10, 4, '23 Plaza Drive', 'Paviato Inc.', 'occupied', 10000);
INSERT INTO offices (office_no, no_floors, sq_foot, no_cubicles, no_bathrooms, address, company_name, status, price) VALUES (2, 3, 4000, 11, 5, '24 Plaza Drive', 'Nandiato LLC', 'vacant', 20000);
INSERT INTO offices (office_no, no_floors, sq_foot, no_cubicles, no_bathrooms, address, company_name, status, price) VALUES (3, 4, 5000, 12, 6, '25 Plaza Drive', 'Paviato Inc.', 'occupied', 30000);
INSERT INTO offices (office_no, no_floors, sq_foot, no_cubicles, no_bathrooms, address, company_name, status, price) VALUES (10, 5, 6000, 14, 7, '26 Plaza Drive', 'Wranger LLC', 'vacant', 40000);
INSERT INTO offices (office_no, no_floors, sq_foot, no_cubicles, no_bathrooms, address, company_name, status, price) VALUES (11, 1, 7000, 15, 8, '27 Plaza Drive', 'Booyah Inc.', 'occupied', 50000);
INSERT INTO offices (office_no, no_floors, sq_foot, no_cubicles, no_bathrooms, address, company_name, status, price) VALUES (12, 9, 8000, 16, 9, '28 Plaza Drive', 'Droneus Inc.', 'occupied', 60000);





INSERT INTO storefronts (address, status, price, kitchen, sq_foot, owner, outdoor_seating) VALUES ('55 Continental Way', 'vacant', 10000, 'yes', 5000, 'Dominic', 'yes');
INSERT INTO storefronts (address, status, price, kitchen, sq_foot, owner, outdoor_seating) VALUES ('56 Continental Way', 'occupied', 20000, 'no', 6000, 'Johnny', 'yes');
INSERT INTO storefronts (address, status, price, kitchen, sq_foot, owner, outdoor_seating) VALUES ('57 Continental Way', 'vacant', 30000, 'yes', 7000, 'Brian', 'no');
INSERT INTO storefronts (address, status, price, kitchen, sq_foot, owner, outdoor_seating) VALUES ('58 Continental Way', 'occupied', 40000, 'no', 8000, 'Mia', 'no');
INSERT INTO storefronts (address, status, price, kitchen, sq_foot, owner, outdoor_seating) VALUES ('59 Continental Way', 'vacant', 50000, 'yes', 9000, 'Ludacris', 'no');
INSERT INTO storefronts (address, status, price, kitchen, sq_foot, owner, outdoor_seating) VALUES ('60 Continental Way', 'occupied', 60000, 'no', 10000, 'Tran', 'yes');


<!------------------- End of file ------------------------>
