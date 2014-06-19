TRUNCATE TABLE apartments;
TRUNCATE TABLE offices;
TRUNCATE TABLE storefronts;


INSERT INTO apartments (apartment_no, num_bedroom, num_bathroom, address, tenant, status, square_footage, price) VALUES (3, 4, 1, 'Queens', 'Bill', 'occupied', 56, 50000);
INSERT INTO apartments (apartment_no, num_bedroom, num_bathroom, address, tenant, status, square_footage, price) VALUES (1, 3, 1, 'Bronx', 'Jack', 'occupied', 90, 77000);
INSERT INTO apartments (apartment_no, num_bedroom, num_bathroom, address, tenant, status, square_footage, price) VALUES (2, 3, 2, 'Queens', 'Jane', 'vacant', 120, 80000);
INSERT INTO apartments (apartment_no, num_bedroom, num_bathroom, address, tenant, status, square_footage, price) VALUES (6, 4, 3, 'Brooklyn', 'Mary', 'occupied', 150, 90000);
INSERT INTO apartments (apartment_no, num_bedroom, num_bathroom, address, tenant, status, square_footage, price) VALUES (3, 3, 1, 'Manhattan', 'Chris', 'vacant', 80, 89000);
INSERT INTO apartments (apartment_no, num_bedroom, num_bathroom, address, tenant, status, square_footage, price) VALUES (6, 2, 1, 'Manhattan', 'Lucy', 'occupied', 98, 29000);

INSERT INTO offices (office_num, floors, square_footage, num_cubicles, num_bathroom, address, company_name, status, price) VALUES (6, 2, 53, 4, 3, 'Manhattan', 'Hamco', 'vacant', 400);
INSERT INTO offices (office_num, floors, square_footage, num_cubicles, num_bathroom, address, company_name, status, price) VALUES (2, 1, 55, 6, 1, 'Bronx', 'Bamco', 'available', 500);
INSERT INTO offices (office_num, floors, square_footage, num_cubicles, num_bathroom, address, company_name, status, price) VALUES (3, 4, 63, 5, 1, 'Manhattan', 'Target', 'vacant', 1400);
INSERT INTO offices (office_num, floors, square_footage, num_cubicles, num_bathroom, address, company_name, status, price) VALUES (2, 7, 77, 2, 2, 'Queens', 'C-town', 'vacant', 650);
INSERT INTO offices (office_num, floors, square_footage, num_cubicles, num_bathroom, address, company_name, status, price) VALUES (7, 3, 22, 6, 3, 'Queens', 'Coop mart', 'available', 900);
INSERT INTO offices (office_num, floors, square_footage, num_cubicles, num_bathroom, address, company_name, status, price) VALUES (9, 5, 88, 2, 4, 'Brooklyn', 'Sears', 'available', 70);
INSERT INTO offices (office_num, floors, square_footage, num_cubicles, num_bathroom, address, company_name, status, price) VALUES (3, 9, 32, 1, 3, 'Queens', 'Verizon', 'available', 90);




INSERT INTO storefronts (address, status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('Bronx', 'available', 3000, false, 50, 'Jim', true);
INSERT INTO storefronts (address, status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('Queens', 'vacant', 500, true, 90, 'Violet', false);
INSERT INTO storefronts (address, status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('Bronx', 'available', 900, true, 150, 'Nancy', true);
INSERT INTO storefronts (address, status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('Manhattan', 'vacant', 2900, true, 250, 'Tom', true);
INSERT INTO storefronts (address, status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('Brooklyn', 'available', 8200, false, 40, 'Bob', false);
INSERT INTO storefronts (address, status, price, kitchen, square_footage, owner, outdoor_seating) VALUES ('Bronx', 'available', 5300, false, 80, 'Hellen', true);


