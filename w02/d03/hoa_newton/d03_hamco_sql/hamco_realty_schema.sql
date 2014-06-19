DROP TABLE apartments;
DROP TABLE offices;
DROP TABLE storefronts;

CREATE TABLE apartments (
	id SERIAL PRIMARY KEY,
	apartment_no integer,
	num_bedroom integer,
	num_bathroom integer,
	address varchar(255),
	tenant varchar(255),
	status varchar(255),
	square_footage integer,
	price integer
);

CREATE TABLE offices (
	id SERIAL PRIMARY KEY,
	office_num integer,
	floors integer,
	square_footage integer,
	num_cubicles integer,
	num_bathroom integer,
	address varchar(255),
	company_name varchar(255),
	status varchar(255),
	price integer
);

CREATE TABLE storefronts (
	id SERIAL PRIMARY KEY,
	address varchar(255),
	status varchar(255),
	price integer,
	kitchen boolean,
	square_footage integer,
	owner varchar(255),
	outdoor_seating boolean
);