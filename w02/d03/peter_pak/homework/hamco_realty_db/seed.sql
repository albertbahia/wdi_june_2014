TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

-- apartments
INSERT INTO apartments (
  apartment_number, bedrooms, bathrooms, address, tenant, status, square_footage, price) VALUES (
    301, 3, 2, '1 Alphabet St', 'Kermit the Frog', 'Occupied', 2200, 450000);
INSERT INTO apartments (
  apartment_number, bedrooms, bathrooms, address, tenant, status, square_footage, price) VALUES (
    302, 2, 2, '22 Revolutionary Rd', 'Brad Pittser', 'Occupied', 1800, 350000);
INSERT INTO apartments (
  apartment_number, bedrooms, bathrooms, address, status, square_footage, price)
VALUES (
    303, 2, 2, '23 Revolutionary Rd', 'Vacant', 1800, 350000);
INSERT INTO apartments (
  apartment_number, bedrooms, bathrooms, address, tenant, status, square_footage, price) VALUES (
    304, 3, 2, '18 Main St', 'Seymour Butz', 'Occupied', 1930, 400000);
INSERT INTO apartments (
  apartment_number, bedrooms, bathrooms, address, status, square_footage, price)
  VALUES (
    305, 5, 4, '13 Penthouse Ln', 'Vacant', 4000, 4000000);
INSERT INTO apartments (
  apartment_number, bedrooms, bathrooms, address, tenant, status, square_footage, price) VALUES (
    306, 3, 2, '332 United Way', 'John Dorian', 'Occupied', 3000, 880000);



-- offices
INSERT INTO offices (
  office_number, floors, square_footage, cubicles, bathrooms, address, company_name, status, price)
  VALUES  (
    501, 4, 4000, 1, 10, '915 Broadway', 'General Assembly', 'Occupied', 1000000);
INSERT INTO offices (
  office_number, floors, square_footage, cubicles, bathrooms, address, company_name, status, price)
  VALUES  (
    502, 6, 6000, 32, 20, '123 Main St', 'Dev Bootcamp', 'Occupied', 990000);
INSERT INTO offices (
  office_number, floors, square_footage, cubicles, bathrooms, address, company_name, status, price)
  VALUES  (
    503, 2, 2000, 10, 4, '3 Yellow Brick Rd', 'App Academy', 'Occupied', 340000);
INSERT INTO offices (
  office_number, floors, square_footage, cubicles, bathrooms, address, company_name, status, price)
  VALUES  (
    504, 4, 4000, 5, 10, '902 Broadway', 'General Assembly', 'Occupied', 1400000);
INSERT INTO offices (
  office_number, floors, square_footage, cubicles, bathrooms, address, status, price)
  VALUES  (
    505, 3, 4000, 1, 10, '46 W 46 St', 'Vacant', 1000000);
INSERT INTO offices (
  office_number, floors, square_footage, cubicles, bathrooms, address, company_name, status, price)
  VALUES  (
    506, 1, 500, 0, 1, '34 Duane St', 'Hamco', 'Occupied', 3480000);



-- storefronts
INSERT INTO storefronts (
  address, tenant, status, price, kitchen, square_footage, owner, outdoor_seating)
  VALUES  (
    '99 Riverside Dr', 'Jack Shepherd', 'Occupied', 750000, FALSE,  1300, 'Jacob', TRUE);
INSERT INTO storefronts (
  address, tenant, status, price, kitchen, square_footage, owner, outdoor_seating)
  VALUES  (
    '1 Island Way', 'John Locke', 'Occupied', 450000, FALSE,  7000, 'Jacob', TRUE);
INSERT INTO storefronts (
  address, tenant, status, price, kitchen, square_footage, owner, outdoor_seating)
  VALUES  (
    '1 The Hatch', 'Desmond Hume', 'Occupied', 999999, TRUE,  800, 'Jacob', FALSE);
INSERT INTO storefronts (
  address, tenant, status, price, kitchen, square_footage, owner, outdoor_seating)
  VALUES  (
    '13 Camp Pl', 'Benjamin Linus', 'Occupied', 200000, TRUE,  1300, 'The Others', TRUE);
INSERT INTO storefronts (
  address, tenant, status, price, kitchen, square_footage, owner, outdoor_seating)
  VALUES  (
    '33 Shaft Drive', 'Charlie ', 'Occupied', 550000, FALSE,  1000, 'Jacob', TRUE);
INSERT INTO storefronts (
  address, status, price, kitchen, square_footage, owner, outdoor_seating)
  VALUES  (
    'The Island', 'WE HAVE TO GO BACK!', 999999, TRUE,  99999, 'Jacob', TRUE);
