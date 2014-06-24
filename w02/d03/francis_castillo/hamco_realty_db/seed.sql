TRUNCATE TABLE apartments;
TRUNCATE TABLE offices;
TRUNCATE TABLE storefront;

INSERT INTO apartments(apartment_num, number_of_bedrooms, number_of_bathrooms, address, tenant, occupied_status, square_footage, price) VALUES( 30,
  3, 3, '10 Smith Street', 'Sam', true, 2750, 100000);

INSERT INTO apartments(apartment_num, number_of_bedrooms, number_of_bathrooms, address, tenant, occupied_status, square_footage, price) VALUES( 21,
  2, 1, '10 Smith Street', NULL, true, 1750, 150000);

INSERT INTO  apartments(apartment_num, number_of_bedrooms, number_of_bathrooms, address, tenant, occupied_status, square_footage, price) VALUES( 49,
  1, 4, '10 Smith Street', 'Bif', true, 5050, 1000000);

INSERT INTO apartments(apartment_num, number_of_bedrooms, number_of_bathrooms, address, tenant, occupied_status, square_footage, price) VALUES( 99,
  6, 6, '10 Smith Street', NULL, false, 7550, 15000000);

INSERT INTO apartments(apartment_num, number_of_bedrooms, number_of_bathrooms, address, tenant, occupied_status, square_footage, price) VALUES( 15,
  3, 2, '76 Jay Street', 'Frank', false, 2050, 343208);

INSERT INTO apartments(apartment_num, number_of_bedrooms, number_of_bathrooms, address, tenant, occupied_status, square_footage, price) VALUES( 7,
  0, 4, '82 Orchard Street', 'Tad', true, 5550, 75000000);

INSERT INTO offices(
  office_num,
  number_of_floors,
  square_footage,
  number_of_cubicles,
  number_of_bathrooms,
  address,
  company_name,
  occupied_status,
  price
) VALUES( 3000,
  10, 15000, 400, 20, '1 Spruce Street', 'Company 1', true, 6750008);

INSERT INTO offices(
  office_num,
  number_of_floors,
  square_footage,
  number_of_cubicles,
  number_of_bathrooms,
  address,
  company_name,
  occupied_status,
  price
) VALUES( 2750, 5, 1200, 10, 3, '34 Prince Street', 'Jack of All Trading', true, 32007);

INSERT INTO offices(
  office_num,
  number_of_floors,
  square_footage,
  number_of_cubicles,
  number_of_bathrooms,
  address,
  company_name,
  occupied_status,
  price
) VALUES( 476,
75, 4780, 32, 12, '2 Spring Street', 'Company 2', false, 1000098 );

INSERT INTO offices(
  office_num,
  number_of_floors,
  square_footage,
  number_of_cubicles,
  number_of_bathrooms,
  address,
  company_name,
  occupied_status,
  price
) VALUES( 300,
  1, 1500, 40, 2, '156 Spruce Street', 'Jackson Bowl', false, 67508);

INSERT INTO offices(
  office_num,
  number_of_floors,
  square_footage,
  number_of_cubicles,
  number_of_bathrooms,
  address,
  company_name,
  occupied_status,
  price
) VALUES( 27500, 15, 14200, 100, 30, '3 Canal Street', 'Ear Co', true, 3200007);

INSERT INTO offices(
  office_num,
  number_of_floors,
  square_footage,
  number_of_cubicles,
  number_of_bathrooms,
  address,
  company_name,
  occupied_status,
  price
) VALUES( 47,
7, 480, 3, 12, '2 Spring Street', 'Company 2', true, 100098 );

INSERT INTO storefront(
  address,
  occupied_status,
  price,
  kitchen,
  square_footage,
  owner,
  outdoors
) VALUES( '1 Smith Street', true, 10000, false, 150000, 'Jack', true);

INSERT INTO storefront(
  address,
  occupied_status,
  price,
  kitchen,
  square_footage,
  owner,
  outdoors
) VALUES( '12  Front Street', false, 54927, true, 15000, 'Jill', true);

INSERT INTO storefront(
  address,
  occupied_status,
  price,
  kitchen,
  square_footage,
  owner,
  outdoors
) VALUES( '75 Spring Street', true, 1000, false, 1500, 'Sack', true);

INSERT INTO storefront(
  address,
  occupied_status,
  price,
  kitchen,
  square_footage,
  owner,
  outdoors
) VALUES( '40  A Avenue', false, 1000, true, 15090, 'Roe', true);

INSERT INTO storefront(
  address,
  occupied_status,
  price,
  kitchen,
  square_footage,
  owner,
  outdoors
) VALUES( '1209 Jamaica Street', true, 100, false, 1500, 'Kirk', false);

INSERT INTO storefront(
  address,
  occupied_status,
  price,
  kitchen,
  square_footage,
  owner,
  outdoors
) VALUES( '23 Jordan Ave', false, 13200, false, 1500000, 'Jack', true);
