# Shoppr
###### A HAMco (beta) product

#### Learning Objectives
- Utilize remote forms to retrieve and display information
- Utilize remote buttons to filter information
- Utilize render with an object to render a partial
- Turn up our SWAG

![xena](http://imgur.com/RIyVb5I)


# Step 1
- Turn on your webcam
- Take a look at yourself and say 'Wasup'
- Your SWAG should now be turned on.

# Step 2 - Set up your rails app!
- bundle
- rake db:create db:migrate db:seed

# Step 3

Define a new Products controller

#### Part 1 - Show All
- Define an index action. This action should return all product entries in the database.
- Create an index.js.erb. Within this file write code that will render all entries in the database and append them to the div with an id of `products-list`
- In your application.html.erb add a button in the div with an id of `nav` that when clicked will display all of the database entries.

#### Part 2 - Search
- In your application.html.erb add a form with a single input, a search field.
- When this form is submitted it should be routed to the search action on the Products controller.
- The search action should be query the database for any entries whose name matches the search parameters
- If any results are found then they should be rendered and displayed in the `products-list` div. If there are none than a message `No results found` should be displayed in the `products-list` div.

__PROTIP__: take a look at SQL Wildcards!

#### Part 3 - Filters
- In your application.html.erb add 4 buttons (each related to a category of a product)
```
Home
Office
Bathroom
Kitchen
```
- When a button is clicked it should go to the filter action on the Products controller.
- The filter action should query the database for all entries matching that category
- The results should then be rendered and displayed in the `products-list` div

#### Part 4 - Get Funky With It
Take a look at some suite jQuery effects

- Make results on show all fade in
- Make results on filters slide down
- Make results on search slide up then slide down
