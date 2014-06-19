TRUNCATE TABLE apartments;
TRUNCATE TABLE offices;
TRUNCATE TABLE stores;


INSERT INTO apartments(apt_number, num_bedrooms, num_bathrooms, address, tenant, occupied, sq_footage, price)
  VALUES (234, 3, 3, 'Not in nyc', 'Seymour', true, 2400, 10000);
INSERT INTO apartments(apt_number, num_bedrooms, num_bathrooms, address, tenant, occupied, sq_footage, price)
  VALUES (233, 1, 1, '800 Fylfot St.', 'Otto von Dix', true, 450, 12);
INSERT INTO apartments(apt_number, num_bedrooms, num_bathrooms, address, tenant, occupied, sq_footage, price)
  VALUES (12, 2, 2, 'Tokyo 3', 'Katsuragi Misato', true, 700, 2500);
INSERT INTO apartments(apt_number, num_bedrooms, num_bathrooms, address, tenant, occupied, sq_footage, price)
  VALUES (34, 1, 4, 'Dooseldorf', 'Hey Really Giger', true, 555, 1000000);
INSERT INTO apartments(apt_number, num_bedrooms, num_bathrooms, address, tenant, occupied, sq_footage, price)
  VALUES (30, 3, 3, 'the desert in nevada', 'none', false, 150, 200);
INSERT INTO apartments(apt_number, num_bedrooms, num_bathrooms, address, tenant, occupied, sq_footage, price)
  VALUES (677, 3, 3, '/mu', 'Jenny Greenwood', true, 100, 8500);


INSERT INTO offices(office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied, price)
  VALUES (89, 6, 80000, 85, 12, '2005 Lassoo St.', 'Necrophiliacs Anonymous', true, 250);
INSERT INTO offices(office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied, price)
  VALUES (80, 25, 850000, 500, 23, 'under the Wall St. bull', 'Executive Outcomes', true, 100);
INSERT INTO offices(office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied, price)
  VALUES (81, 18, 15000, 20, 17, 'under Tokyo', 'NERV', true, 10000000);
INSERT INTO offices(office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied, price)
  VALUES (800, 34, 30000, 80, 20, 'under your house', 'The Filth', true, 10);
INSERT INTO offices(office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied, price)
  VALUES (9000, 2, 1800, 82, 4, 'under your desk', 'Redundancy Inc.', true, 4500);
INSERT INTO offices(office_number, num_floors, sq_footage, num_cubicles, num_bathrooms, address, company_name, occupied, price)
  VALUES (123, 4, 3400, 5, 8, 'Alpentine, Spectrum', 'Cockatrice Marketing', true, 380);




INSERT INTO stores(address, occupied, price, kitchen, sq_footage, owner, outdoor_seating)
  VALUES ('100 Furriskey Lane', true, 4000, false, 100, 'Mssrs. Trellis and Smith', false);
INSERT INTO stores(address, occupied, price, kitchen, sq_footage, owner, outdoor_seating)
  VALUES ('the pookas house', true, 3000, true, 200, 'the Good Fairy', true);
INSERT INTO stores(address, occupied, price, kitchen, sq_footage, owner, outdoor_seating)
  VALUES ('yo mama', true, 3000, true, 400, 'yo doge', false);
INSERT INTO stores(address, occupied, price, kitchen, sq_footage, owner, outdoor_seating)
  VALUES ('458 Hell Street', true, 3000, false, 400, 'Molly Millions', false);
INSERT INTO stores(address, occupied, price, kitchen, sq_footage, owner, outdoor_seating)
  VALUES ('Bermondsey St.', true, 3000, false, 500, 'Pluto, the God', true);
INSERT INTO stores(address, occupied, price, kitchen, sq_footage, owner, outdoor_seating)
  VALUES ('[redacted]', true, 3000, false, 600, '[redacted]', false);
