TRUNCATE TABLE apartments;
TRUNCATE TABLE offices;
TRUNCATE TABLE storefronts;

INSERT INTO apartments (apt_number, num_bedrooms, num_bathrooms, address, tenant, occ_status, sq_feet, price) VALUES (342, 2, 1, '12 West 7th Street', 'Larry Goldmond', TRUE, 200, 600000);
INSERT INTO apartments (apt_number, num_bedrooms, num_bathrooms, address, tenant, occ_status, sq_feet, price) VALUES (746, 3, 1, '12 West 7th Street', 'Phil Spencer', TRUE, 400, 1200350);
INSERT INTO apartments (apt_number, num_bedrooms, num_bathrooms, address, tenant, occ_status, sq_feet, price) VALUES (867, 1, 2, '55 East 28th Street', 'Michael Pacter', TRUE, 225, 325000);
INSERT INTO apartments (apt_number, num_bedrooms, num_bathrooms, address, tenant, occ_status, sq_feet, price) VALUES (324, 2, 1, '200 West 143rd Street', NULL, FALSE, 350, 510000);
INSERT INTO apartments (apt_number, num_bedrooms, num_bathrooms, address, tenant, occ_status, sq_feet, price) VALUES (322, 6, 3, '7 Rector Place', 'Larry Goldmond', TRUE, 1025, 3500000);
INSERT INTO apartments (apt_number, num_bedrooms, num_bathrooms, address, tenant, occ_status, sq_feet, price) VALUES (123, 0, 1, '200 West 143rd Street', NULL, FALSE, 150, 250000);

INSERT INTO offices (office_number, num_floors, sq_feet, num_cubicles, num_bathrooms, address, company, occ_status, price) VALUES (34, 6, 5000, 300, 30, '915 East Bolland Ave', 'Najee Inc', TRUE, 3250000);
INSERT INTO offices (office_number, num_floors, sq_feet, num_cubicles, num_bathrooms, address, company, occ_status, price) VALUES (357, 3, 3500, 200, 41, '67 Pollack Ave', 'Boogy Inc', TRUE, 5500000);
INSERT INTO offices (office_number, num_floors, sq_feet, num_cubicles, num_bathrooms, address, company, occ_status, price) VALUES (63, 2, 2250, 150, 70, '12 Hollow Point', 'Tiger Direct', TRUE, 2250000);
INSERT INTO offices (office_number, num_floors, sq_feet, num_cubicles, num_bathrooms, address, company, occ_status, price) VALUES (988, 1, 1500, 75, 65, '7 Brer Bear Ave', NULL, FALSE, 4750000);
INSERT INTO offices (office_number, num_floors, sq_feet, num_cubicles, num_bathrooms, address, company, occ_status, price) VALUES (39, 5, 5250, 900, 23, '915 East Bolland Ave', NULL, FALSE, 7350000);
INSERT INTO offices (office_number, num_floors, sq_feet, num_cubicles, num_bathrooms, address, company, occ_status, price) VALUES (3, 4, 4500, 450, 36, '915 East Bolland Ave', 'Najee Inc', TRUE, 100500000);

INSERT INTO storefronts (address, occ_status, price, kitchen, sq_feet, owner, outdoor_seating) VALUES ('45 Horse Radish Drive', TRUE, 450000, TRUE, 800, 'Alex Roman', TRUE);
INSERT INTO storefronts (address, occ_status, price, kitchen, sq_feet, owner, outdoor_seating) VALUES ('8 Bool Ean Road', TRUE, 350000, FALSE, 1000, 'Jasmine Fox Jones', FALSE);
INSERT INTO storefronts (address, occ_status, price, kitchen, sq_feet, owner, outdoor_seating) VALUES ('4 Vari Able Junction', TRUE, 250000, FALSE, 1400, 'Carlo Valentine', FALSE);
INSERT INTO storefronts (address, occ_status, price, kitchen, sq_feet, owner, outdoor_seating) VALUES ('65 Logger Run Ave', TRUE, 90000, TRUE, 700, 'Peter Guy', TRUE);
INSERT INTO storefronts (address, occ_status, price, kitchen, sq_feet, owner, outdoor_seating) VALUES ('5 Pika Pika Lane', FALSE, 800000, TRUE, 6500, NULL, TRUE);
INSERT INTO storefronts (address, occ_status, price, kitchen, sq_feet, owner, outdoor_seating) VALUES ('45 Horse Radish Drive', FALSE, 750500, FALSE, 1750, NULL, FALSE);
