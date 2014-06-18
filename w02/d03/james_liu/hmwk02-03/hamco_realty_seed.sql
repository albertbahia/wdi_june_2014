TRUNCATE TABLE apartments;
TRUNCATE TABLE offices;
TRUNCATE TABLE storefronts;

INSERT INTO apartments (apartment_number, number_of_rooms, number_of_baths, address, tenant, occupied_status, sq_footage, price) VALUES (1, 2, 1, '12345 A St.', 2, 'Yes', 10, 20000);
INSERT INTO apartments (apartment_number, number_of_rooms, number_of_baths, address, tenant, occupied_status, sq_footage, price) VALUES (2, 4, 2, '2345 B St.', 3 'Yes', 1500, 20000);
INSERT INTO apartments (apartment_number, number_of_rooms, number_of_baths, address, tenant, occupied_status, sq_footage, price) VALUES (3, 3, 2, '1345 C St.', 4, 'Yes', 2000, 100000);
INSERT INTO apartments (apartment_number, number_of_rooms, number_of_baths, address, tenant, occupied_status, sq_footage, price) VALUES (4, 5, 2, '1245 D St.', 9, 'Yes', 300, 1000000);
INSERT INTO apartments (apartment_number, number_of_rooms, number_of_baths, address, tenant, occupied_status, sq_footage, price) VALUES (5, 3, 2, '1235 E St.', 2, 'Yes', 3000, 9000000);
INSERT INTO apartments (apartment_number, number_of_rooms, number_of_baths, address, tenant, occupied_status, sq_footage, price) VALUES (6, 2, 1, '1234 F St.', 7, 'No', 1500, 700000);

INSERT INTO offices (office_number, number_of_floors, sq_footage, number_of_cubes, number_of_baths, address, company_name, occupied_status, price) VALUES (1, 4, 30000, 40, 8, '9876 Z Ln.', 'A Co', 'full', 4000000);
INSERT INTO offices (office_number, number_of_floors, sq_footage, number_of_cubes, number_of_baths, address, company_name, occupied_status, price) VALUES (2, 8, 55000, 80, 8, '8765 Y Ln.', 'B Co', 'partial', 8000000);
INSERT INTO offices (office_number, number_of_floors, sq_footage, number_of_cubes, number_of_baths, address, company_name, occupied_status, price) VALUES (3, 9, 65000, 850, 8, '7654 X Ln.', 'C Co', 'full', 9000000);
INSERT INTO offices (office_number, number_of_floors, sq_footage, number_of_cubes, number_of_baths, address, company_name, occupied_status, price) VALUES (4, 12, 100000, 100, 8, '6543 W Ln.', 'D Co', 'partial', 1000000);
INSERT INTO offices (office_number, number_of_floors, sq_footage, number_of_cubes, number_of_baths, address, company_name, occupied_status, price) VALUES (5, 40, 300000, 400, 20, '5432 V Ln.', 'E Co', 'empty', 5000000);
INSERT INTO offices (office_number, number_of_floors, sq_footage, number_of_cubes, number_of_baths, address, company_name, occupied_status, price) VALUES (6, 14, 12000, 150, 8, '4321 U Ln.', 'F Co', 'empty', 400000);

INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('1111 1st. St.', 'Vacant', 5000000, 'Yes', 100000, 'Don Leone', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('2222 2nd St.', 'Occupied', 7000000, 'No', 500000, 'Don John', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('3333 3rd St.', 'Occupied', 4000000, 'No', 450000, 'Sean Jon', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('4444 4th St.', 'Vacant', 20000, 'No', 10000, 'Dave Chapelle', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('5555 5th.', 'Vacant', 1000000, 'Yes', 500000, 'A Kardashian', 'Yes');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) VALUES ('6666 6th St.', 'Occupied', 50000000, 'Yes', 500000, 'Donald Trump', 'Yes');

