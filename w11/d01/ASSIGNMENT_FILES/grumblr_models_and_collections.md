![](http://www.marcellusonmainstreet.org/uploads/businesses/logos/1c6cd25a-ebbb-4213-9c30-135e16cbc7a6.jpg)

HAMCo wants to expand it's internet presence. HAMterest was a smash hit, Trillo
is taking off, Tun.r has never been more profitable, and Hoots is growing 10x
everyday. But what HAMCo is really missing is a micro blogging service. Introducing...

# Grumblr
#### A HAMCo Product

![Grumblr Logo](http://i.imgur.com/UJ8tr2A.jpg)

#### Objectives

- Practice building Backbone.js models and collections that communicate with a
  JSON backend.
- Practice using Backbone.js models and collections to get and modify data on a server.
- Practice implementing a javascript library with dependencies.

### Step 1 - Build the Backend

Your assignment for tonight is to lay down the foundation for your first
Backbone application. You should start by creating a new Rails app `grumblr_app`
and setting up the routes, migrations, models, controllers, and requiring all
necessary javascript libraries. You may use the 'backbars' gem to load in
backbone.js and handlebars.js.

A Grumble should have the following attributes:

- an author (just the name, not an association)
- content
- title
- image
- avatar
- timestamps

### Step 2 - Write a Seed Script

Write a simple seed script that wipes and then loads your database with ~20
grumbles.

### Step 3 - Define the Grumble Model and Collection

Define the grumble model and a grumble collection in your app code (
  * `app/assets/javascripts/models/grumble.js`
  * `app/assets/javascripts/collections/grumblesCollection.js`

### Step 4 - Use your Grumbles

Load your site in the browser, and use the console to perform the following
actions using your models and collections. Save the commands in a file called
grumblegrumblegrumble.js (save this one file in the root of your personal folder
w11/d01/YOUR_NAME, NOT in your rails app.).

1. Create a new grumble (call it 'grumble1') with no attributes set.
2. Set that grumbles attributes in one line.
3. Save grumble1.
4. Delete grumble1.
5. Create grumble2, this time setting the attributes when you create it.
6. Modify grumble2's title and content, and save it (2 lines).
7. Create a new gumble collection, and call it allGrumbles.
8. Fill the allGrumbles collection with the data from the server.
9. Retrieve a specific grumble (of your choosing) from the collection and store it
   in a variable called 'myFavGrumble'.
10. Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
11. Add a brand new grumble to the collection in one line. Make sure to set its properties.
12. Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
