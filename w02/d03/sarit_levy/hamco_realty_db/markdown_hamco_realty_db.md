
The average square footage of all offices:
SELECT AVG(square_footage) FROM * offices;

The total number of apartments:
SELECT COUNT(*) FROM apartments;

The apartments where there is no tenant:
SELECT * FROM apartments WHERE occupied_status = 'Not Occupied';

The names of all of the companies:
SELECT company_name FROM offices;

The number of cubicles and bathrooms in the 3rd office:
SELECT cubicles_number, bathrooms FROM offices WHERE id = 3;

The storefronts that have kitchens:
SELECT * FROM storefronts WHERE kitchen = 'Yes';

The storefront with the highest square footage and outdoor seating:
SELECT MAX(square_footage) FROM storefronts WHERE outdoor_seating = 'Yes';

The office with the lowest number of cubicles:
SELECT MIN(cubicles_number) FROM offices;

The office with the most cubicles and bathrooms:
SELECT MAX(cubicles_number) FROM offices ORDER BY MAX(bathrooms);

____________________________

Schema code:

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occupied_status varchar(255),
  square_footage integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number integer,
  floors integer,
  square_footage integer,
  cubicles_number integer,
  bathrooms integer,
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
  square_footage integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);

_______________________________


Seed code:

INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (10, 4, 2, '120 Madison Avenue, New York, NY', 'Nancy King', 'Occupied', 3027, 3450);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (14, 2, 2, '347 16th Street, Brooklyn, NY', NULL, 'Not Occupied', 2490, 2050);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (37, 1, 1, '457 Shore Road, Brooklyn, NY', 'Hassan Burbey', 'Occupied', 1256, 4500);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (41, 2, 1, '37 Inverness Blvd, New York, NY', NULL, 'Not Occupied', 2100, 1950);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (26, 3, 1, '12-36 Northern Pkwy, Forest Hills, NY', 'Shawna Kensington', 'Occupied', 3459, 2730);
INSERT INTO apartments (apt_number, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (7, 3, 2, '59 Hester Street, New York, NY', 'Hassan Burbey', 'Occupied', 2013, 3425);


INSERT INTO offices (office_number, floors, square_footage, cubicles_number, bathrooms, address, company_name, occupied_status, price) VALUES (26, 3, 6547, 114, 6, '567 West 40th Street, New York, NY', 'Command Programming', 'Occupied', 47230);
INSERT INTO offices (office_number, floors, square_footage, cubicles_number, bathrooms, address, company_name, occupied_status, price) VALUES (527, 5, 9790, 254, 10, '632 West End Avenue, New York, NY', 'Starward Realty Management', 'Occupied', 82000);
INSERT INTO offices (office_number, floors, square_footage, cubicles_number, bathrooms, address, company_name, occupied_status, price) VALUES (28, 2, 4789, 75, 4, '1626 Delorean Street, Brooklyn, NY', NULL, 'Not Occupied', 39500);
INSERT INTO offices (office_number, floors, square_footage, cubicles_number, bathrooms, address, company_name, occupied_status, price) VALUES (3, 1, 1567, 25, 2, '230 Kensington Street, Astoria, NY', 'Best Value Buyers', 'Occupied', 13000);
INSERT INTO offices (office_number, floors, square_footage, cubicles_number, bathrooms, address, company_name, occupied_status, price) VALUES (12, 4, 8349, 210, 6, '6829 St. Nicholas Avenue, New York, NY', NULL, 'Not Occupied', 35400);
INSERT INTO offices (office_number, floors, square_footage, cubicles_number, bathrooms, address, company_name, occupied_status, price) VALUES (6, 1, 2030, 30, 2, '2153 Boomer Street, Brooklyn, NY', 'Personal Stylists LLC', 'Occupied', 20390);


INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('232 Houston Street, New York, NY', 'Occupied', 6790, 'Yes', 3280, 'Zachary Properties, Inc.', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('320 West 67th Street, New York, NY', 'Not Occupied', 9200, 'No', 2733, 'Good Things Gone Bad, LP', 'No');
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('2943 Church Street, Brooklyn, NY', 'Occupied', 4750, 'No', 3520, 'Stein and Klein Associates LLC', 'No');
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('1238 Avenue P, Brooklyn, NY', 'Occupied', 3200, 'Yes', 2497, 'We Are Brooklyn, Inc.', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('24 East 37th Street, New York, NY', 'Not Occupied', 7035, 'No', 4017, 'Hammerlength Entities', 'No');
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('649 Harmon Street, Long Island City, NY', 'Occupied', 2967, 'Yes', 3219, 'Anytime Foods, Inc.', 'Yes');
