TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, is_occupied, square_footage, price)
  VALUES (2, 3, 1, '56 St. Marks Pl.', 'Sean', true, 200, 1600);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, is_occupied, square_footage, price)
  VALUES (41, 2, 2, '22 E. 18th St', null, false, 220, 1800);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, is_occupied, square_footage, price)
  VALUES (18, 3, 2, '108 5th Ave.', 'Jane', true, 500, 5000);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, is_occupied, square_footage, price)
  VALUES (6, 2, 1, '410 Essex St.', 'Michael', true, 180, 1400);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, is_occupied, square_footage, price)
  VALUES (22, 1, 1, '10 Hudson St.', 'Emily', true, 250, 2800);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenant, is_occupied, square_footage, price)
  VALUES (4, 1, 2, '150 Thompson St.', 'Joe', true, 400, 10000);

INSERT INTO offices (office_no, floors, square_footage, cubicles, bathrooms, address, company_name, is_occupied, price)
  VALUES (7, 2, 600, 120, 3, '220 6th Ave.', 'Google', true, 25000);
INSERT INTO offices (office_no, floors, square_footage, cubicles, bathrooms, address, company_name, is_occupied, price)
  VALUES (1, 4, 1000, 80, 2, '1 5th Ave.', 'Apple', true, 35000);
INSERT INTO offices (office_no, floors, square_footage, cubicles, bathrooms, address, company_name, is_occupied, price)
  VALUES (4, 2, 500, 90, 2, '410 8th Ave.', null, false, 20000);
INSERT INTO offices (office_no, floors, square_footage, cubicles, bathrooms, address, company_name, is_occupied, price)
  VALUES (3, 2, 800, 150, 3, '52 W 12th St.', 'ESPN', true, 18000);
INSERT INTO offices (office_no, floors, square_footage, cubicles, bathrooms, address, company_name, is_occupied, price)
  VALUES (9, 2, 700, 150, 3, '18 Orchard St.', 'Pepsi', true, 15000);
INSERT INTO offices (office_no, floors, square_footage, cubicles, bathrooms, address, company_name, is_occupied, price)
  VALUES (11, 3, 1200, 300, 3, '1 Wall St.', 'UBS', true, 40000);

INSERT INTO storefronts (address, is_occupied, price, has_kitchen , square_footage, owner, has_outdoor_seating)
  VALUES ('28 48th St.', true, 25000, true, 1200, 'Michael Angelo', false);
INSERT INTO storefronts (address, is_occupied, price, has_kitchen , square_footage, owner, has_outdoor_seating)
  VALUES ('76 7th Ave.', true, 30000, false, 1400, 'David Bowie', false);
INSERT INTO storefronts (address, is_occupied, price, has_kitchen , square_footage, owner, has_outdoor_seating)
  VALUES ('1 5th Ave.', true, 50000, true, 1000, 'Birdman', false);
INSERT INTO storefronts (address, is_occupied, price, has_kitchen , square_footage, owner, has_outdoor_seating)
  VALUES ('16 W 33rd St.', true, 30000, true, 1320, 'deadmau5', true);
INSERT INTO storefronts (address, is_occupied, price, has_kitchen , square_footage, owner, has_outdoor_seating)
  VALUES ('5 W 4th St.', true, 40000, true, 1680, 'Rupert Murdoch', true);
INSERT INTO storefronts (address, is_occupied, price, has_kitchen , square_footage, owner, has_outdoor_seating)
  VALUES ('440 Broadway', false, 45000, true, 2000, 'Edward Snowden', false);
