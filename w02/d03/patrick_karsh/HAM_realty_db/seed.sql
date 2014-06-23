TRUNCATE apartments; 
TRUNCATE offices; 
TRUNCATE storefronts; 


INSERT INTO apartments (apartment_number, number_baths, number_beds, address, a_tenant, occupied_status, sq_footage, price) 
VALUES ( 12, 2, 3, '666 Park Ave' , 'Mr. Bond', 'occupied', 900, 3000 );
INSERT INTO apartments (apartment_number, number_baths, number_beds, address, a_tenant, occupied_status, sq_footage, price) 
VALUES ( 13, 2, 3, '666 Park Ave' , 'Mr. Black', 'occupied', 900, 3000 );  
INSERT INTO apartments (apartment_number, number_baths, number_beds, address, a_tenant, occupied_status, sq_footage, price) 
VALUES ( 9, 2, 3, '88 West 4th Street' , null , 'unoccuupied', 900, 3000 );  
INSERT INTO apartments (apartment_number, number_baths, number_beds, address, a_tenant, occupied_status, sq_footage, price) 
VALUES ( 2, 2, 3, '88 West 4th Street' , null , 'unoccuupied', 900, 3000 );  
INSERT INTO apartments (apartment_number, number_baths, number_beds, address, a_tenant, occupied_status, sq_footage, price) 
VALUES ( 92, 2, 3, '88 West 4th Street' , null,  'unoccuupied', 900, 3000 );  
INSERT INTO apartments (apartment_number, number_baths, number_beds, address, a_tenant, occupied_status, sq_footage, price) 
VALUES ( 41, 2, 3, '21 B Baker Street' , 'Mr. Holmes', 'occupied', 900, 3000 );  

INSERT INTO offices (office_number, floor_number, sq_footage, cubicle_num, number_bathrooms, address, company_name, occupied_status, price) 
VALUES (10, 66, 600, 6, 1, '666 Madison Ave', null , 'unoccuupied', 100); 
INSERT INTO offices (office_number,floor_number, sq_footage, cubicle_num, number_bathrooms, address, company_name, occupied_status, price) 
VALUES (2, 6, 900, 6, 1, '666 Madison Ave', null , 'unoccuupied', 150); 
INSERT INTO offices (office_number,floor_number, sq_footage, cubicle_num, number_bathrooms, address, company_name, occupied_status, price) 
VALUES (2, 86, 400, 16, 1, '666 Madison Ave', null , 'unoccuupied', 170); 
INSERT INTO offices (office_number,floor_number, sq_footage, cubicle_num, number_bathrooms, address, company_name, occupied_status, price) 
VALUES (3, 67, 300, 20, 1, '69 Underworld Drive', null , 'unoccuupied', 180); 
INSERT INTO offices (office_number,floor_number, sq_footage, cubicle_num, number_bathrooms, address, company_name, occupied_status, price) 
VALUES (3, 16, 22, 60, 1, '666 Madison Ave', 'Sat Ann', 'occupied', 140); 
INSERT INTO offices (office_number,floor_number, sq_footage, cubicle_num, number_bathrooms, address, company_name, occupied_status, price) 
VALUES (3, 2, 600, 6, 1, '666 Madison Ave', 'Conglomo', 'occupied', 130); 


INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) 
VALUES ('44 West St', 'occupied', 66, 'no', 850, 'Montypeny', 'no'); 
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) 
VALUES ('32 June Street', 'occupied', 66, 'no', 850, 'Jerry', 'no'); 
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) 
VALUES ('44 East St', 'occupied', 66, 'no', 850, 'Tom', 'no'); 
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) 
VALUES ('44 66th St', 'unoccupied', 66, 'no', 850, null , 'yes'); 
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) 
VALUES ('44 Pine St', 'unoccupied', 66, 'yes', 630, null , 'yes'); 
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_footage, owner, outdoor_seating) 
VALUES ('44 Mineta St', 'unoccupied', 66, 'yes', 630, null , 'yes'); 
 
