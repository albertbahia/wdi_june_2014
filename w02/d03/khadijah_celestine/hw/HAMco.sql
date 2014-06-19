DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  apt_no integer,
  bedrooms integer,
  bathrooms integer,
  address varchar(255),
  tenanat varchar(255),
  occupied boolean,
  sq_ft integer,
  price integer
);

CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_no integer,
  floors integer,
  sq_ft integer,
  cubicles integer,
  bathrooms integer,
  address varchar(255),
  company varchar(255),
  occupied boolean,
  price integer
);

CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address varchar(255),
  occupied boolean,
  price integer,
  kitchen boolean,
  sq_ft integer,
  owner varchar(255),
  outdoor_seating boolean
);

INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (7, 3, 2, '314 Osborn Street', 'Asher', true, 792, 1149);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (11, 3, 1, '196 Montrose Avenue', 'Ethan', true, 937, 1402);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (2, 2, 1, '291 56th Street', 'Jeremiah', true, 945, 1340);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (9, 2, 1, '345 Ashland Place', 'Grace', true, 845, 1209);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (11, 2, 2, '212 Stillwells Place', 'Morgan', true, 813, 1237);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (5, 1, 1, '267 Pearl Street', 'Cooper', true, 721, 1305);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (2, 1, 1, '350 Kiely Place', 'Brayden', true, 786, 1112);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (4, 1, 1, '280 Fleet Street', 'Brooklyn', true, 766, 1121);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (9, 3, 2, '172 Tudor Terrace', 'Colin', true, 862, 1431);
INSERT INTO apartments (apt_no, bedrooms, bathrooms, address, tenanat, occupied, sq_ft, price) VALUES (12, 3, 2, '189 Herkimer Place', 'Alexis', true, 994, 1330);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (261, 8, 2855, 293, 254, '216 Paerdegat 14th Street', 'IsabelleChristian INC', true, 3125);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (290, 4, 1951, 157, 314, '197 Hoyts Lane', 'AsherMackenzie INC', true, 2810);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (289, 5, 2727, 215, 191, '216 36th Street', 'OwenScarlett INC', true, 3447);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (128, 8, 1644, 297, 330, '337 Harwood Place', 'MasonEmma INC', true, 2356);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (313, 8, 3498, 152, 171, '245 Stanley Avenue', 'HunterLuke INC', true, 3211);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (180, 7, 3362, 264, 103, '278 De Sales Place', 'AlexandraSarah INC', true, 2928);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (203, 4, 2352, 191, 231, '248 76th Street', 'EliseElla INC', true, 3092);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (212, 6, 2686, 183, 331, '280 St Andrews Place', 'EliElla INC', true, 3022);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (140, 4, 1815, 168, 110, '126 Bay 49th Street', 'CarsonZachary INC', true, 3392);
INSERT INTO offices (office_no, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price) VALUES (186, 8, 2699, 174, 252, '133 Stillwell Place', 'SarahHenry INC', true, 2404);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('256 Emerald Street', true, 2978, true, 3302, 'Victoria', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('261 Everett Avenue', true, 3620, true, 1284, 'Jackson', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('172 3rd Avenue', true, 3904, true, 2359, 'James', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('329 Girard Street', true, 3980, true, 2867, 'Bella', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('337 Arion Place', true, 2896, true, 1970, 'Alex', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('303 Dennett Place', true, 3897, true, 2725, 'Thomas', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('108 Paerdegat 1st Street', true, 2597, true, 3058, 'Cameron', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('326 8th Avenue', true, 3517, true, 2615, 'Jayden', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('104 Perri Lane', true, 2740, true, 1001, 'Cooper', true);
INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating) VALUES ('319 Amber Street', true, 2589, true, 1819, 'Elena', true);

SELECT AVG(sq_ft) FROM offices;
SELECT COUNT(*) FROM apartments;
SELECT * FROM apartments WHERE occupied = false;
SELECT company FROM offices;
SELECT cubicles, bathrooms FROM offices WHERE id = 3;
SELECT * FROM storefronts WHERE kitchen = true;
SELECT * FROM storefronts ORDER BY sq_ft DESC LIMIT 1;
SELECT * FROM offices ORDER BY cubicles ASC LIMIT 1;
SELECT * FROM offices ORDER BY cubicles, bathrooms DESC LIMIT 1;
