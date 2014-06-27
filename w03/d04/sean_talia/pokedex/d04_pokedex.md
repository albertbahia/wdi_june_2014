Homework 03-04

#### Learning Objectives
- Implement RESTful routes to organize your code
- Use controllers to separate concerns on the server
- Use namespaced `erb`s to organize entity specific views
- Implement a PostgreSQL database to persist an app's data

# Gotta Catch Em All!!!

### Step 1
Set up a new web app using Sinatra. You should have the following folder structure:
- Views
  - trainers
  - pokemons
- Controllers
- Models
- server.rb

There should be a root route `/` that will display 2 links:
- A link to view the Pokemon Index
- A link to view the Trainer Index

### Step 2 - Pokemons
- Define an index route for your Pokemon controller
  - The index route should display all pokemon stored in your database
  - Each displayed pokemon should have a link that will take you to that pokemon's individual page
- Define a show route
  - The show route should display all information related to that individual pokemon
  - There should be a link displayed that will allow a user to navigate back to the
  pokemon index page.

### Step 3 - Trainers
For trainers you will define the Seven RESTful Routes for your Trainer controller.
- Define an index route
  - This route should display all of the Trainer's stored in your database
  - Each displayed trainer should have a link that will take a user to that individual trainer's page
  - There should be a link displayed that will allow a user to create a new Trainer
  - There should be a link to go back to the Homepage

- Define a show route
  - This route should display the information for an individual trainer
  - There should be a link that will allow a user to view the index of trainers
  - There should be a link that will allow a user to edit a trainer
  - If a trainer has pokemon then all of their pokemon should be displayed with their name, species, photo and type.

- Define a new route
  - This route should display a form that allows a user to create a new Trainer
  - When the form is submitted a user should be taken to that new trainer's individual page

- Define a create route
  - This route should create the new trainer object and redirect the user to that trainer's individual page

- Define an edit route
  - This route should display a form that allows a user to edit the information for an individual trainer
  - There should be a button displayed that when clicked will delete that trainer from the database

- Define an update route
  - This route should update the trainer's information and redirect them to the trainer's individual page

- Define a delete route
  - This route should delete the selected trainer from the database and then redirect the the trainer index page.

###BONUS
On the Trainer show page:
- If they don't have any pokemon then display a button that when clicked will select 6 random pokemon and assign them to that trainer.
- The button should then be removed and the Pokemon should be displayed for that trainer.
