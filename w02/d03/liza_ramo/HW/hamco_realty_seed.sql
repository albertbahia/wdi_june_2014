TRUNCATE apartments;
TRUNCATE offices;
TRUNCATE storefronts;

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (50, 4, 2, '123 Any st.', 'Liza', 'Yes', 500, 1300);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (30, 2, 4, '671 Any st.', 'Khadijah', 'Yes', 600, 1400);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (40, 4, 2, '789 Any st.', 'Hari', 'Yes', 900, 900);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (20, 3, 4, '900 Any st.', 'Peter', 'Yes', 400, 800);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (70, 3, 1, '763 Any st.', 'McKenneth', 'Yes', 100, 600);

INSERT INTO apartments
(apartment_num, bedroom_num, bathroom_num, address, tenant_name,
  occupied_status, sq_footage, price)
VALUES (500, 4, 2, '128 Any st.', 'Jae', 'Yes', 200, 500);




INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (500, 4, 200, 5000, 2500, '234 Any st.', 'LizaCo', 'Yes', 25000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (200, 4, 300, 600, 30, '948 Any st.', 'JamesCo', 'Yes', 35000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (500, 5, 300, 300, 100, '260 Any st.', 'SaritCo', 'Yes', 25000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (60, 4, 300, 800, 25, '892 Any st.', 'JesseCo', 'Yes', 15000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (100, 30, 100, 900, 200, '400 Any st.', 'JaeCo', 'Yes', 29000);

INSERT INTO offices
(office_num, num_floors, sq_footage, num_cubicles, bathroom_num,
  address, company_name, occupied_status, price)
VALUES (60, 40, 400, 500, 40, '201 Any st.', 'McKennethCo', 'Yes', 25000);



INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('662 Any st.', 'Yes', 30000, 'Yes', 40000, 'Yes', 'Yes');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('991 Any st.', 'Yes', 40000, 'Yes', 20000, 'Yes', 'No');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('290 Any st.', 'Yes', 30000, 'Yes', 40000, 'Yes', 'No');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('822 Any st.', 'Yes', 20000, 'Yes', 60000, 'Yes', 'Yes');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('229 Any st.', 'Yes', 30000, 'Yes', 50000, 'Yes', 'No');

INSERT INTO storefronts
(address, occupied_status, price, kitchen_present, sq_footage,
  owner_present, outdoor_seating_present)
VALUES ('500 Any st.', 'Yes', 40000, 'Yes', 40000, 'Yes', 'Yes');
