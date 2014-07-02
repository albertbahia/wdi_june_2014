SELECT AVG(sq_footage) FROM offices;
SELECT COUNT(*) FROM apartments;
SELECT tenant FROM apartments WHERE occupied_status='Unoccupied';
SELECT company_name FROM offices;
SELECT (num_cubicles, num_bathrooms) FROM offices WHERE id=3;
SELECT * FROM storefronts WHERE kitchen='Yes';
SELECT * FROM storefronts WHERE sq_footage = (SELECT MAX(sq_footage) FROM storefronts WHERE outdoor_seating='Yes');
SELECT * FROM offices WHERE cubicles = (SELECT MIN(cubicles) FROM offices);
SELECT * FROM offices WHERE num_cubicles + num_bathrooms = (SELECT MAX(num_cubicles + num_bathrooms) FROM offices);


SCHEMA---->

DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_num varchar(255) NOT NULL,
  num_bedrooms integer NOT NULL,
  num_bathrooms integer NOT NULL,
  address varchar(255) NOT NULL,
  tenant varchar(255),
  occupied_status varchar(255),
  sq_footage integer NOT NULL,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_num varchar(255) NOT NULL,
  num_floors integer NOT NULL,
  sq_footage integer NOT NULL,
  num_cubicles integer NOT NULL,
  num_bathrooms integer NOT NULL,
  address varchar(255) NOT NULL,
  company_name varchar(255),
  occupied_status varchar(255),
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255) NOT NULL,
  occupied_status varchar(255),
  price integer,
  kitchen varchar(255) NOT NULL,
  sq_footage integer NOT NULL,
  owner varchar(255),
  outdoor_seating varchar(255) NOT NULL
);


SEED----->


TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupied_status, sq_footage, price)
 VALUES ('1F', 2, 2, '20 Gold St', 'Harold', 'Occupied', 500, 2000);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupied_status, sq_footage, price)
 VALUES ('2D', 4, 4, '70 W. 23rd St', 'Biggy', 'Occupied', 2000, 9000);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupied_status, sq_footage, price)
 VALUES ('48F', 5, 5, '100 Madison Ave', 'Snoop', 'Occupied', 2050, 12000);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupied_status, sq_footage, price)
 VALUES ('3D', 1, 0, '1525 1st Ave', 'Levine', 'Occupied', 650, 1900);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupied_status, sq_footage, price)
 VALUES ('7B', 1, 1, '99 Lafayette Ave', 'Jessie', 'Occupied', 700, 2500);
INSERT INTO apartments (apt_num, num_bedrooms, num_bathrooms, address, tenant, occupied_status, sq_footage, price)
 VALUES ('50A', 6, 6, 'Columbus Circle', null, 'Unoccupied', 5000, 50000);

INSERT INTO offices (office_num, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price)
 VALUES ('100', 1, 2000, 20, 3, '45 Broadway', 'SaiLev LLC', 'Occupied', 3000);
INSERT INTO offices (office_num, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price)
 VALUES ('200', 2, 4000, 40, 6, '75 Broadway', null, 'Unoccupied', 4000);
INSERT INTO offices (office_num, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price)
 VALUES ('300', 5, 10000, 100, 15, '86 Broadway', 'TrendPlay Ltd.', 'Occupied', 10000);
INSERT INTO offices (office_num, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price)
 VALUES ('400', 7, 14000, 140, 21, '90 Broadway', 'Smokescreen Co', 'Occupied', 14000);
INSERT INTO offices (office_num, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price)
 VALUES ('500', 20, 40000, 400, 60, '234 Broadway', 'Najee Enterprizes', 'Occupied', 40000);
INSERT INTO offices (office_num, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied_status, price)
 VALUES ('600', 12, 24000, 240, 36, '57 Broadway', 'SaiDuck Inc.', 'Occupied', 30000);

INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating)
 VALUES ('33 Madison Ave', 'Unoccupied', 3000, 'Yes', 1000, 'Levine', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating)
 VALUES ('40 Madison Ave', 'Occupied', 3240, 'Yes', 1050, 'Bobo', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating)
 VALUES ('67 Madison Ave', 'Occupied', 4200, 'No', 1500, 'Najee', 'No');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating)
 VALUES ('63 Madison Ave', 'Occupied', 1250, 'No', 300, 'Jay', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating)
 VALUES ('290 Madison Ave', 'Unoccupied', 2500, 'Yes', 600, 'Levine', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating)
 VALUES ('500 Madison Ave', 'Occupied', 3250, 'Yes', 700, 'Levine', 'Yes');
