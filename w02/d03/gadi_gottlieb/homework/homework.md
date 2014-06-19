SELECT square_feet FROM offices;
SELECT id FROM apartments;
SELECT * FROM apartments WHERE status = 'vacant';
SELECT company_name FROM offices;
SELECT cubicles FROM offices WHERE id = 3;
SELECT * FROM storefronts WHERE kitchen = 'TRUE';
SELECT MAX(square_feet) FROM storefronts WHERE outdoor_seating = 'TRUE';
SELECT MIN(cubicles) FROM offices;
SELECT MAX(cubicles), MAX(bathrooms) FROM offices;




DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_number integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenant_name varchar(255),
  status varchar(255),
  square_feet integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  number_of_floors integer,
  square_feet integer,
  cubicles integer,
  bathrooms integer,
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
  kitchen boolean,
  square_feet integer,
  owner_name varchar(255),
  outdoor_seating boolean
);



TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant_name,
status, square_feet, price) VALUES (10, 3, 1, 'Washington Ave', 'Gary Oldman',
'occupied', 500, 1200);
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant_name,
status, square_feet, price) VALUES (23, 25, 15, 'Bulls Pl.', 'Michael Jordan',
'vacant', 10000, 25000);
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant_name,
status, square_feet, price) VALUES (5, 7, 4, 'Shea St.', 'David Wright',
'occupied', 2500, 3500);
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant_name,
status, square_feet, price) VALUES (72, 8, 5, 'Rick James Ct.', 'Dave Chappelle',
'vacant', 4500, 6000);
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant_name,
status, square_feet, price) VALUES (123, 9, 2, 'W 83rd St', 'Jerry Seinfeld',
'occupied', 3600, 5000);
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant_name,
status, square_feet, price) VALUES (1000, 6, 3, 'Curb Your Enthusiasm Dr.', 'Larry David',
'vacant', 4000, 5500);

INSERT INTO offices (office_number, number_of_floors, square_feet, cubicles,
bathrooms, address, company_name, status, price) VALUES (99, 15, 500000, 1500,
50, 'Fifth Ave.', 'Citi Bank', 'occupied', 60000000);
INSERT INTO offices (office_number, number_of_floors, square_feet, cubicles,
bathrooms, address, company_name, status, price) VALUES (150, 20, 750000, 3000,
75, 'Second Ave.', 'Chase Bank', 'occupied', 100000000);
INSERT INTO offices (office_number, number_of_floors, square_feet, cubicles,
bathrooms, address, company_name, status, price) VALUES (24, 30, 600000, 2500,
60, 'Wall St.', 'HAMco Realty', 'occupied', 100000);
INSERT INTO offices (office_number, number_of_floors, square_feet, cubicles,
bathrooms, address, company_name, status, price) VALUES (66, 42, 800000, 3100,
45, 'Union Sq.', 'Trump Realty', 'vacant', 60000000);
INSERT INTO offices (office_number, number_of_floors, square_feet, cubicles,
bathrooms, address, company_name, status, price) VALUES (199, 10, 200000, 600,
55, 'Saint Nicholas Ave.', 'Wells Fargo', 'vacant', 3000000);
INSERT INTO offices (office_number, number_of_floors, square_feet, cubicles,
bathrooms, address, company_name, status, price) VALUES (3, 4, 26000, 75,
7, 'Grand St.', 'Toys R Us', 'vacant', 100000);

INSERT INTO storefronts (address, status, price, kitchen, square_feet, owner_name,
outdoor_seating) VALUES ('17 Union Square', 'occupied', 500, 'TRUE', 6000, 'Miles Plumlee',
'TRUE');
INSERT INTO storefronts (address, status, price, kitchen, square_feet, owner_name,
outdoor_seating) VALUES ('8 92nd St.', 'vacant', 1500, 'FALSE', 7000, 'Mason Dixon',
'FALSE');
INSERT INTO storefronts (address, status, price, kitchen, square_feet, owner_name,
outdoor_seating) VALUES ('10 Italion Stalion Dr.', 'occupied', 3600, 'TRUE', 8000,
'Rocky Balboa', 'TRUE');
INSERT INTO storefronts (address, status, price, kitchen, square_feet, owner_name,
outdoor_seating) VALUES ('69 Powers Ter.', 'vacant', 69000, 'TRUE', 6900,
'Austin Danger Powers', 'FALSE');
INSERT INTO storefronts (address, status, price, kitchen, square_feet, owner_name,
outdoor_seating) VALUES ('2 Master Disater Way', 'vacant', 2400, 'FALSE', 3200,
'Appolo Creed', 'FALSE');
INSERT INTO storefronts (address, status, price, kitchen, square_feet, owner_name,
outdoor_seating) VALUES ('5 Evil Dr.', 'occupied', 10000000, 'TRUE', 10000000,
'Doctor Evil', 'TRUE');
