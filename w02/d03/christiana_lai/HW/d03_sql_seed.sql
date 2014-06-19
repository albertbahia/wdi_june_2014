TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, status, sq_ft, price) VALUES (123, 1, 2, '1 Apple Alley', 'Hank Schillinger', 'Occupied', 200, 40);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, status, sq_ft, price) VALUES (124, 2, 3, '2 Pen Place', 'Walter White', 'Occupied', 150, 10);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, status, sq_ft, price) VALUES (125, 3, 2, '3 Water Way', 'Simon Adebisi', 'Vacant', 300, 40);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, status, sq_ft, price) VALUES (126, 1, 4, '4 Sing Street', 'Ryan Reilly', 'Vacant', 100, 20);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, status, sq_ft, price) VALUES (127, 3, 1, '5 Ant Avenue', 'Tobias Beecher', 'Occupied', 300, 10);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, status, sq_ft, price) VALUES (128, 5, 2, '6 Broadway', 'Chris Keller', 'Vacant', 50, 5);


INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, status, price) VALUES (201, 3, 30, 50, 3, '7 Austin Street', 'Microsoft', 'Vacant', 80);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, status, price) VALUES (202, 50, 80, 1, 50, '8 Burns Street', 'Apple', 'Occupied', 90);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, status, price) VALUES (203, 25, 90, 5, 60, '9 Clyde Street', 'Etsy', 'Vacant', 100);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, status, price) VALUES (204, 300, 100, 80, 90, '10 Exeter Street', 'Birchbox', 'Vacant', 110);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, status, price) VALUES (205, 1, 75, 8, 40, '11 Fleet Street', 'General Assembly', 'Vacant', 120);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, status, price) VALUES (206, 89, 65, 15, 50, '12 Groton Street', 'Knicks', 'Occupied', 130);

INSERT INTO storefronts (address, status, price, has_kitchen, sq_ft, owner, has_outdoor_seating) VALUES ('13 Horton Street', 'Vacant', 40, 'True', 500, 'Walt Disney', 'False');
INSERT INTO storefronts (address, status, price, has_kitchen, sq_ft, owner, has_outdoor_seating) VALUES ('14 Ingram Street', 'Vacant', 80, 'True', 400, 'Peppermint Patty', 'True');
INSERT INTO storefronts (address, status, price, has_kitchen, sq_ft, owner, has_outdoor_seating) VALUES ('15 Juno Street', 'Occupied', 90, 'False', 60, 'Donald Trump', 'True');
INSERT INTO storefronts (address, status, price, has_kitchen, sq_ft, owner, has_outdoor_seating) VALUES ('16 Klein Street', 'Vacant', 10, 'True', 200, 'Marc Cuban', 'False');
INSERT INTO storefronts (address, status, price, has_kitchen, sq_ft, owner, has_outdoor_seating) VALUES ('17 London Street', 'Vacant', 20, 'False', 80, 'Mr. Wonderful', 'True');
INSERT INTO storefronts (address, status, price, has_kitchen, sq_ft, owner, has_outdoor_seating) VALUES ('18 Metro Street', 'Vacant', 70, 'True', 100, 'Jerry Springer', 'True');
