TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apartment_number, number_of_bedrooms, number_of_bathrooms,
address, tenant, occupancy_status, square_footage, price)
VALUES (2, 3, 1, '11 Manaway Ln', 'Jim Smith', 'occupied', 600, 1500);
INSERT INTO apartments (apartment_number, number_of_bedrooms, number_of_bathrooms,
address, tenant, occupancy_status, square_footage, price)
VALUES (56, 2, 2, '55 Houston St', 'Charlye Tran', 'occupied', 500, 2000);
INSERT INTO apartments (apartment_number, number_of_bedrooms, number_of_bathrooms,
address, tenant, occupancy_status, square_footage, price)
VALUES (4, 1, 1, '123 Dirty Ln', 'Emmanuel Leather', 'occupied', 1000, 1500);
INSERT INTO apartments (apartment_number, number_of_bedrooms, number_of_bathrooms,
address, tenant, occupancy_status, square_footage, price)
VALUES (1, 2, 2, '45 Sweeten Rd', 'Dr. Seuss', 'occupied', 20, 2560);
INSERT INTO apartments (apartment_number, number_of_bedrooms, number_of_bathrooms,
address, tenant, occupancy_status, square_footage, price)
VALUES (864, 5, 3, '16 Millionaires Lane', 'Donald Trump', 'unoccupied', 3000, 1500000);
INSERT INTO apartments (apartment_number, number_of_bedrooms, number_of_bathrooms,
address, tenant, occupancy_status, square_footage, price)
VALUES (345, 1, 1, '18 Tulane', 'Merry Christmas', 'unoccupied', 699, 200);

INSERT INTO offices (office_number, number_of_floors, square_footage, number_of_cubicles,
number_of_bathrooms, address, company_name, occupancy_status, price)
VALUES (52, 3, 6000, 15, 12, '123 Park Ln', 'Mitsubishi', 'occupied', 100000);
INSERT INTO offices (office_number, number_of_floors, square_footage, number_of_cubicles,
number_of_bathrooms, address, company_name, occupancy_status, price)
VALUES (233, 16, 8908, 27, 10, '567 Madison Ave', 'Mad Men Co.', 'unoccupied', 89734);
INSERT INTO offices (office_number, number_of_floors, square_footage, number_of_cubicles,
number_of_bathrooms, address, company_name, occupancy_status, price)
VALUES (6455, 54, 8923, 18, 5, '891 Lexington Ave', 'Police PD', 'occupied', 23466);
INSERT INTO offices (office_number, number_of_floors, square_footage, number_of_cubicles,
number_of_bathrooms, address, company_name, occupancy_status, price)
VALUES (830, 84, 9824, 12, 50, '1359 Basket Ln', 'Cookies Inc.', 'occupied', 89823);
INSERT INTO offices (office_number, number_of_floors, square_footage, number_of_cubicles,
number_of_bathrooms, address, company_name, occupancy_status, price)
VALUES (11, 2, 1000, 3, 1, '1 Distant Land', 'Insured Inc.', 'unoccupied', 8304);
INSERT INTO offices (office_number, number_of_floors, square_footage, number_of_cubicles,
number_of_bathrooms, address, company_name, occupancy_status, price)
VALUES (96, 14, 15000, 70, 21, '16 Cheers Rd', 'Alcholics Anonymous', 'occupied', 13894);


INSERT INTO storefronts (address, occupancy_status, price, kitchen_available, square_footage,
owner, outdoor_seating)
VALUES('11 Madison', 'occupied', 829374, true, 8394, 'Bob Barker', true);
INSERT INTO storefronts (address, occupancy_status, price, kitchen_available, square_footage,
owner, outdoor_seating)
VALUES('6835 Svenson Rd', 'unoccupied', 892743, 'false', 5834, 'Emily Roberts', 'false');
INSERT INTO storefronts (address, occupancy_status, price, kitchen_available, square_footage,
owner, outdoor_seating)
VALUES('84 Pinky St', 'occupied', 34324, true, 1500, 'YMCA', false);
INSERT INTO storefronts (address, occupancy_status, price, kitchen_available, square_footage,
owner, outdoor_seating)
VALUES('99 Middle Rd', 'occupied', 23989, true, 3899, 'PetsSmart', false);
INSERT INTO storefronts (address, occupancy_status, price, kitchen_available, square_footage,
owner, outdoor_seating)
VALUES('9854 Ring Road', 'unoccupied', 3894, false, 1544, 'PetCo', true);
INSERT INTO storefronts (address, occupancy_status, price, kitchen_available, square_footage,
owner, outdoor_seating)
VALUES('68 Thumb Dr', 'unoccupied', 1345, true, 1679, 'Phone Co', true);
