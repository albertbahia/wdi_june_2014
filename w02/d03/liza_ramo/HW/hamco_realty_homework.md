- The average square footage of all offices.
    SELECT AVG(sq_footage) AS OfficeFootageAverage FROM offices;

- The total number of apartments.
    SELECT SUM(apartment_num) FROM apartments;

- The apartments where there is no tenant
    occupied_status FROM apartments WHERE occupied_status = 'No';

- The names of all of the companies
    SELECT company_name FROM offices;

- The number of cubicles and bathrooms in the 3rd office
    SELECT (num_cubicles, bathroom_num) FROM offices WHERE id = 3;

- The storefronts that have kitchens
    SELECT (kitchen_present) FROM storefronts WHERE kitchen_present = 'Yes';

- The storefront with the highest square footage and outdoor seating
    SELECT MAX(sq_footage) FROM storefronts;

- The storefront with the highest square footage and outdoor seating
    SELECT id FROM storefronts WHERE outdoor_seating_present ='Yes'
    AND sq_footage = (SELECT MAX(sq_footage) FROM storefronts WHERE outdoor_seating_present = 'Yes');

- The office with the lowest number of cubicles
    SELECT company_name FROM offices WHERE num_cubicles = (SELECT MIN(num_cubicles) FROM offices);

- The office with the most cubicles and bathrooms
    SELECT company_name FROM offices WHERE num_cubicles = (SELECT MAX(num_cubicles) FROM offices) AND bathroom_num = (SELECT MAX(bathroom_num) FROM offices);



********* SCHEMA FILE: **********

DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apartment_num integer,
  bedroom_num integer,
  bathroom_num integer,
  address varchar(255),
  tenant_name varchar(255),
  occupied_status varchar(255),
  sq_footage integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_num integer,
  num_floors integer,
  sq_footage integer,
  num_cubicles integer,
  bathroom_num integer,
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
  kitchen_present varchar(255),
  sq_footage integer,
  owner_present varchar(255),
  outdoor_seating_present varchar(255)
);


******* SEED FILE: **********

TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (50, 4, 2, '123 Any st.', 'Liza', 'Yes', 500, 1300);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (30, 2, 4, '671 Any st.', 'Khadijah', 'Yes', 600, 1400);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (40, 4, 2, '789 Any st.', 'Hari', 'Yes', 900, 900);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (20, 3, 4, '900 Any st.', 'Peter', 'Yes', 400, 800);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (70, 3, 1, '763 Any st.', 'McKenneth', 'Yes', 100, 600);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (500, 4, 2, '128 Any st.', 'Jae', 'Yes', 200, 500);




INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (500, 4, 200, 5000, 2500, '234 Any st.', 'LizaCo', 'Yes', 25000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (200, 4, 300, 600, 30, '948 Any st.', 'JamesCo', 'Yes', 35000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (500, 5, 300, 300, 100, '260 Any st.', 'SaritCo', 'Yes', 25000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (60, 4, 300, 800, 25, '892 Any st.', 'JesseCo', 'Yes', 15000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (100, 30, 100, 900, 200, '400 Any st.', 'JaeCo', 'Yes', 29000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (60, 40, 400, 500, 40, '201 Any st.', 'McKennethCo', 'Yes', 25000);



INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('662 Any st.', 'Yes', 30000, 'Yes', 40000, 'Yes', 'Yes');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('991 Any st.', 'Yes', 40000, 'Yes', 20000, 'Yes', 'No');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('290 Any st.', 'Yes', 30000, 'Yes', 40000, 'Yes', 'No');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('822 Any st.', 'Yes', 20000, 'Yes', 60000, 'Yes', 'Yes');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('229 Any st.', 'Yes', 30000, 'Yes', 50000, 'Yes', 'No');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('500 Any st.', 'Yes', 40000, 'Yes', 40000, 'Yes', 'Yes');
