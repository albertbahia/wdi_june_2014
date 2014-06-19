SELECT AVG(sq_footage) FROM offices;
SELECT COUNT(apt_number) FROM apartments;
SELECT address FROM apartments WHERE tenant = null;
SELECT company_name FROM offices;
SELECT num_cubicles, num_bathrooms FROM offices WHERE id = 3;
SELECT * FROM storefronts WHERE kitchen = 'yes';
SELECT * FROM storefronts WHERE kitchen = 'yes' ORDER BY sq_footage DESC LIMIT 1;
SELECT * FROM offices ORDER BY num_cubicles ASC LIMIT 1;
SELECT * FROM offices ORDER BY num_cubicles DESC, num_bathrooms DESC LIMIT 1;

#schema
DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255) NOT NULL,
  tenant varchar(255),
  occupied_status varchar(255) NOT NULL,
  sq_footage integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  num_floors integer,
  sq_footage integer,
  num_cubicles integer,
  num_bathrooms integer,
  address varchar(255) NOT NULL,
  company_name varchar(255) NOT NULL,
  occupied_status varchar(255) NOT NULL,
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255) NOT NULL,
  occupied_status varchar(255) NOT NULL,
  price integer,
  kitchen varchar(255),
  sq_footage integer,
  owner varchar(255) NOT NULL,
  outdoor_seating varchar(255) NOT NULL
);

#seed
TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, sq_footage, price) VALUES (4, 1, 1, '3324 5th Ave', 'Jon', 'occupied', 400, 2000);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, sq_footage, price) VALUES (8, 3, 3, '6666 1st Ave', 'Satan', 'occupied', 600, 6666);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, sq_footage, price) VALUES (3, 1, 1, '591 Driggs Ave', 'Tim', 'occupied', 300, 2500);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, sq_footage, price) VALUES (1, 2, 2, '324 33rd St', null, 'occupied', 300, 2300);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, sq_footage, price) VALUES (4, 1, 1, '3324 Bedford Ave', 'Jon', 'occupied', 900, 7000);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, sq_footage, price) VALUES (8, 3, 3, '6666 Rivington Ave', 'Satan', 'occupied', 600, 2200);

INSERT INTO offices (office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price) VALUES (4, 5, 12000, 90, 2, '224 Bedford Ave', 'Tweeter', 'occupied', 20000);
INSERT INTO offices (office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price) VALUES (22, 2, 1000, 90, 4, '1203 1st Ave', 'FaceGeek', 'occupied', 2000);
INSERT INTO offices (office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price) VALUES (23, 4, 3000, 37, 4, '112 9th St', 'SalesCore', 'occupied', 40000);
INSERT INTO offices (office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price) VALUES (9, 10, 30000, 42, 2, '666 Berry Ave', 'InstaBam', 'occupied', 40000);
INSERT INTO offices (office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price) VALUES (5, 3, 9000, 20, 8, '886 5th St', 'PayBud', 'occupied', 9000);
INSERT INTO offices (office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price) VALUES (34, 1, 3000, 5, 3, '645 6th Ave', 'PinBeast', 'occupied', 90000);

INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('456 Bowery', 'occupied', 4000, 'yes', 900, 'Mark', 'no');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('876 Prince St', 'occupied', 3000, 'yes', 400, 'Alexa', 'no');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('998 34th St', 'occupied', 6000, 'no', 900, 'Simon', 'yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('856 Wythe St', 'occupied', 6300, 'no', 200, 'Ron', 'yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('487 5th St', 'occupied', 2100, 'no', 4300, 'Alexa', 'no');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('111 2nd Ave', 'occupied', 7600, 'no', 1200, 'Marie', 'yes');
