SELECT AVG(square_footage) FROM offices;
SELECT COUNT(*) FROM apartments;
SELECT FROM apartments WHERE occupied_status = 'vacant';
SELECT company_name FROM offices;
SELECT(cubicles, bathrooms) FROM offices WHERE id = 3;
SELECT * FROM storefronts WHERE kitchen = true;
SELECT MAX(square_footage) FROM storefronts WHERE outdoor_seating = true;
SELECT MIN(cubicles) FROM offices;
SELECT MAX(cubicles + bathrooms) FROM offices;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_no integer,
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
  office_no integer,
  floors_no integer,
  square_footage integer,
  cubicles integer,
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
  kitchen boolean,
  square_footage integer,
  owner varchar(255),
  outdoor_seating boolean
);

TRUNCATE TABLE apartments;
TRUNCATE TABLE offices;
TRUNCATE TABLE storefronts;

INSERT INTO apartments (apartment_no, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (1, 2, 1, '210 Ave B', 'John', 'occupied', 600, 2000);
INSERT INTO apartments (apartment_no, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (2, 3, 2, '133 E 17th St', 'Mary, Lisa, Jenny', 'occupied', 450, 2200);
INSERT INTO apartments (apartment_no, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (3, 2, 2, '45 Park Avenue', 'Jesse, Forest', 'occupied', 900, 4500);
INSERT INTO apartments (apartment_no, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (4, 4, 2, '50 E 8th St', 'Anthony, Johnny, Kyle, Sam', 'occupied', 720, 3500);
INSERT INTO apartments (apartment_no, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (5, 4, 1, '45 Bedford Ave', 'Lyle, Barry, John, Linda', 'occupied', 2000, 5000);
INSERT INTO apartments (apartment_no, bedrooms, bathrooms, address, tenant, occupied_status, square_footage, price) VALUES (6, 1, 1, '34 Lexington Ave', null, 'vacant', 450, 2200);




INSERT INTO offices (office_no, floors_no, square_footage, cubicles, bathrooms, address, company_name, occupied_status, price) VALUES (1, 3, 2500, 48, 3, '18 Park Ave', 'ACME Corp.', 'occupied', 5000);
INSERT INTO offices (office_no, floors_no, square_footage, cubicles, bathrooms, address, company_name, occupied_status, price) VALUES (3, 19, 4000, 3, 5, '12 Prince St', 'Mac Cosmetics', 'occupied', 30000);
INSERT INTO offices (office_no, floors_no, square_footage, cubicles, bathrooms, address, company_name, occupied_status, price) VALUES (501, 12, 3500, 8, 2, '1 World Trade Center', 'NYSE', 'occupied', 100000);
INSERT INTO offices (office_no, floors_no, square_footage, cubicles, bathrooms, address, company_name, occupied_status, price) VALUES (390, 4, 2000, 2, 3, '15 E 14th St', 'HAMTA', 'occupied', 2200);
INSERT INTO offices (office_no, floors_no, square_footage, cubicles, bathrooms, address, company_name, occupied_status, price) VALUES (15, 1, 3000, 2, 4, '66 Cornelia St', 'Rodenticide Crew', 'occupied', 4000);
INSERT INTO offices (office_no, floors_no, square_footage, cubicles, bathrooms, address, company_name, occupied_status, price) VALUES (2200, 59, 9000, 20, 6, '1 Columbus Circle', 'Trump INC.', 'occupied', 1000000);



INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('2 E 2nd St', 'occupied', 2500, true, 2000, 'Matilda', false);
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('24 Ludlow St', 'vacant', 3000, true, 800, 'Johnny', true);
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('48 E 78th St', 'vacant', 4500, false, 800, 'Murray', false);
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('45 Barrow St', 'occupied', 5500, true, 1000, 'Clarissa', true);
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('1 Bank St', 'occupied', 9000, true, 2200, 'Antonio', false);
INSERT INTO storefronts (address, occupied_status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('45 St. Marks Place', 'vacant', 2000, false, 2900, 'Khaleesi', true);
