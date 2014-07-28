Homework 02-03

#### Learning Objectives
- Practice using a relational database
- Practice using postgresql
- Practice writing a database schema
- Practice seeding a database using SQL
- Practice querying a database

![hamco](http://www.marcellusonmainstreet.org/uploads/businesses/logos/1c6cd25a-ebbb-4213-9c30-135e16cbc7a6.jpg)

HAMco is expanding! After our successes with the HAMda personal digital assistant and our HAMta redesign, we are ready to start investing in some brick and mortar assets. Introducing...

# HAMco Realty

Tonight your assignment is to lay down the foundation for HAMco's 'Next Big Thing'.

### Step 1 - Create a Database and Tables
From the command line create a database called `hamco_realty_db`. After you have created your database, define a schema for three tables:

- Apartments
 - An Apartment should have:
   - a unique id
   - an apartment number
   - number of bedrooms
   - number of bathrooms
   - an address
   - a tenant
   - an occupied status
   - a square footage
   - a price
- Offices
 - An office should have:
   - a unique id
   - an office number
   - a number of floors
   - a square footage
   - a number of cubicles
   - a number of bathrooms
   - an address
   - a company name
   - an occupied status
   - a price
- Storefronts
 - A storefront should have:
   - a unique id
   - an addressh
   - an occupied status
   - a price
   - whether there is a kitchen or not
   - a square footage
   - an owner
   - whether there is outdoor seating or not

### Step 2 - Load in your tables
From the command line, load up your database schema into your database
- Check to make sure that your tables exist, and that all of the appropriate columns have been added to your tables.

### Step 3 - Define a seed file and seed your database
In a SQL file, write commands that will add new entries into your apartment, office and storefront tables. You should create at least 6 entries for each table. Vary the attributes of each entry so no two are alike. From the command line, load this seed file into your database.

### Step 4 - Query!

In a markdown file write the SQL commands you would use to retrieve the following information from your database. Test each command in PSQL to make sure it is correct:

- The average square footage of all offices.
- The total number of apartments.
- The apartments where there is no tenant
- The names of all of the companies
- The number of cubicles and bathrooms in the 3rd office
- The storefronts that have kitchens
- The storefront with the highest square footage and outdoor seating
- The office with the lowest number of cubicles
- The office with the most cubicles and bathrooms

__hint__: some of the commands we did not go over in class. W3 schools has an awesome guide for sql commands :wink:

Please include the code from your schema and seed in the markdown file at the very bottom.
