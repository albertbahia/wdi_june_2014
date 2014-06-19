TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_no,bedrooms,bathrooms,address,tenant,occupied,area,price) VALUES (1001,3,2,'201 One Way Ave','Mark Lowe',true,12000,10000);
INSERT INTO apartments (apt_no,bedrooms,bathrooms,address,tenant,occupied,area,price) VALUES (1002,1,1,'201 One Way Ave','James Conner',true,700,3000);
INSERT INTO apartments (apt_no,bedrooms,bathrooms,address,tenant,occupied,area,price) VALUES (1003,3,2,'201 One Way Ave','Ramon Diaz',true,8000,7500);
INSERT INTO apartments (apt_no,bedrooms,bathrooms,address,tenant,occupied,area,price) VALUES (1205,2,1,'3454 Quarter Cir','Lisa Chew',true,1500,4000);
INSERT INTO apartments (apt_no,bedrooms,bathrooms,address,tenant,occupied,area,price) VALUES (1206,2,2,'123 Blue Rd','Mark Lowe',true,1200,4000);
INSERT INTO apartments (apt_no,bedrooms,bathrooms,address,tenant,occupied,area,price) VALUES (1207,1,1,'761 Triangle Cir','Mark Lowe',true,900,2000);

INSERT INTO offices (office_no,floors,area,cubicles,bathrooms,address,company_name,occupied,price) VALUES (10,1,3000,18,2,'1001 Broadway','Go Optics',true,5000);
INSERT INTO offices (office_no,floors,area,cubicles,bathrooms,address,company_name,occupied,price) VALUES (12,1,2000,10,2,'1001 Broadway','Uber',true,4000);
INSERT INTO offices (office_no,floors,area,cubicles,bathrooms,address,company_name,occupied,price) VALUES (14,1,1400,6,2,'1001 Broadway','Paper',true,3200);
INSERT INTO offices (office_no,floors,area,cubicles,bathrooms,address,company_name,occupied,price) VALUES (50,2,6000,32,4,'8801 Madison','TDE',true,15000);
INSERT INTO offices (office_no,floors,area,cubicles,bathrooms,address,company_name,occupied,price) VALUES (51,2,4000,18,4,'8801 Madison','Crows',true,8000);
INSERT INTO offices (office_no,floors,area,cubicles,bathrooms,address,company_name,occupied,price) VALUES (52,2,2800,12,4,'8801 Madison','Bad Boy',true,6500);

INSERT INTO storefronts (address,occupied,price,kitchen,area,owner,outdoor_seating) VALUES ('1 H St.',false,10000,true,8000,'Dylan',true);
INSERT INTO storefronts (address,occupied,price,kitchen,area,owner,outdoor_seating) VALUES ('2 H St.',true,5000,true,5000,'Juan',true);
INSERT INTO storefronts (address,occupied,price,kitchen,area,owner,outdoor_seating) VALUES ('432 L St.',true,1500,false,2000,'April',false);
INSERT INTO storefronts (address,occupied,price,kitchen,area,owner,outdoor_seating) VALUES ('910 Q St.',true,4000,true,4000,'Kim',true);
INSERT INTO storefronts (address,occupied,price,kitchen,area,owner,outdoor_seating) VALUES ('43 B St.',true,2000,false,3000,'Lauren',false);
INSERT INTO storefronts (address,occupied,price,kitchen,area,owner,outdoor_seating) VALUES ('1 M St.',false,3000,true,4000,'Mike',true);
