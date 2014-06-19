- The average square footage of all offices.
- The total number of apartments.
- The apartments where there is no tenant
- The names of all of the companies
- The number of cubicles and bathrooms in the 3rd office
- The storefronts that have kitchens
- The storefront with the highest square footage and outdoor seating
- The office with the lowest number of cubicles
- The office with the most cubicles and bathrooms

- SELECT AVG(price) AS PriceAverage FROM offices;
- SELECT COUNT(*) FROM apartments;
- SELECT COUNT(occupied_status) FROM apartments WHERE occupied_status='Not Occupied';
- SELECT company_name FROM offices;
- SELECT number_of_cubicles, number_of_bathrooms FROM offices WHERE id=3;
- SELECT COUNT(kitchen) FROM storefronts WHERE kitchen='Has Kitchen';
- SELECT MAX(sq_ft) FROM storefronts WHERE outdoor_seating='Has Outdoor';
- SELECT MIN(number_of_cubicles) FROM offices;
- SELECT * FROM offices WHERE number_of_cubicles = (SELECT MAX(number_of_cubicles) FROM offices) AND number_of_bathrooms = (SELECT MAX(number_of_bathrooms) FROM offices);

DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_number varchar(255),
  number_of_bedrooms integer,
  number_of_bathrooms integer,
  address varchar(255),
  tenant varchar(255),
  occupied_status varchar(255),
  sq_ft integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number varchar(255),
  number_of_floors integer,
  sq_ft integer,
  number_of_cubicles integer,
  number_of_bathrooms integer,
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
  kitchen varchar(255),
  sq_ft integer,
  owner varchar(255),
  outdoor_seating varchar(255)
);



TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments (apt_number,number_of_bedrooms,number_of_bathrooms,address,tenant,occupied_status,sq_ft,price) VALUES ('5D', 4, 2, '123 Apple St','John Smith','Occupied',1200,200000);
INSERT INTO apartments (apt_number,number_of_bedrooms,number_of_bathrooms,address,tenant,occupied_status,sq_ft,price) VALUES ('40', 2, 2, '234 Banana Court','Julie Joe','Not Occupied',1000,120000);
INSERT INTO apartments (apt_number,number_of_bedrooms,number_of_bathrooms,address,tenant,occupied_status,sq_ft,price) VALUES ('7I', 4, 2, '586 Strawberry Drive','Barry Bonds','Occupied',5000,2000000);
INSERT INTO apartments (apt_number,number_of_bedrooms,number_of_bathrooms,address,tenant,occupied_status,sq_ft,price) VALUES ('9001', 4, 2, '954 High Street','Derek Jeter','Not Occupied',2000,6000000);
INSERT INTO apartments (apt_number,number_of_bedrooms,number_of_bathrooms,address,tenant,occupied_status,sq_ft,price) VALUES ('50', 4, 2, '934 Cherry Circle','Barack Obama','Not Occupied',1000,20000);
INSERT INTO apartments (apt_number,number_of_bedrooms,number_of_bathrooms,address,tenant,occupied_status,sq_ft,price) VALUES ('5K', 4, 2, '1 Main Street','Bob Billy Joe','Occupied',50,2000);

INSERT INTO offices (office_number,number_of_floors,sq_ft,number_of_cubicles,number_of_bathrooms,address,company_name,occupied_status,price) VALUES ('504',10,10000,20,100,'123 5th Ave','Nike','Occupied',1000000000);
INSERT INTO offices (office_number,number_of_floors,sq_ft,number_of_cubicles,number_of_bathrooms,address,company_name,occupied_status,price) VALUES ('4',4,5000,0,6,'10 East 21st St.','General Assembly','Occupied',5040559);
INSERT INTO offices (office_number,number_of_floors,sq_ft,number_of_cubicles,number_of_bathrooms,address,company_name,occupied_status,price) VALUES ('1',5,4000,1000,105,'1 Cupertino Circle','Apple','Occupied',34985764);
INSERT INTO offices (office_number,number_of_floors,sq_ft,number_of_cubicles,number_of_bathrooms,address,company_name,occupied_status,price) VALUES ('12',3,2045,20,4,'12 Main St.','Starbucks','Not Occupied',3040596);
INSERT INTO offices (office_number,number_of_floors,sq_ft,number_of_cubicles,number_of_bathrooms,address,company_name,occupied_status,price) VALUES ('94',1,1000,20,6,'64 Apple Court','Ruby Rails Corp','Occupied',134983);
INSERT INTO offices (office_number,number_of_floors,sq_ft,number_of_cubicles,number_of_bathrooms,address,company_name,occupied_status,price) VALUES ('10',2,4094,94,12,'10 Sunny Road','Microsoft','Not Occupied',1);

INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('123 Apple Road','Occupied',394959,'Has Kitchen',2040,'Frank Joe','No Outdoor');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('124 Apple Road','Not Occupied',204503,'No Kitchen',1049,'Jill James','Has Outdoor');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('125 Apple Road','Occupied',123456,'No Kitchen',1294,'Tim Smith','No Outdoor');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('126 Apple Road','Occupied',948540,'Has Kitchen',1839,'Harry Potter','Has Outdoor');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('127 Apple Road','Not Occupied',395396,'Has Kitchen',2940,'Hermoine Granger','No Outdoor');
INSERT INTO storefronts (address, occupied_status, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('128 Apple Road','Occupied',403954,'Has Kitchen',3204,'Ron Weasly','Has Outdoor');
