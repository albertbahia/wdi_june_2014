Homework 08-01

#### Learning Objectives
- Practice integerating JavaScript into a Rails App
- Use JavaScript and AJAX to interface with the Back-End
- Use AJAX to create and store entries in a database and update the DOM
- Use AJAX to remove entries from a database and update the DOM

Tonight you are going to create a single-page Rails app that uses AJAX and jQuery to manipulate the DOM, while keeping the database synchronized with events occuring on the Front-End.

### Part 1

Set up your Rails app.

- bundle
- rake db:create
- rake db:migrate
- rake db:seed

Before you begin to write any JavaScript look through the models, views and controllers of the Rails App. Look through the stylesheets.

### Part 2

Define the following functions:

###### fetchPosts
- This function should make a request to the server to fetch 10 posts to be displayed onscreen
- This function should run on page load.

###### renderPost
- This function should accept a single parameter, an object representing a post
- It should build the HTML element representing a post and display it on the screen

A post should have:
- a title
- an author
- an image_url
- content
- a category
- a button to delete the post

###### displayPosts
- This function should iterate over the collection of objects returned from fetchPosts and display them onscreen

###### addPost
- When the user clicks the `HAM It Up` button a request should be made that will send all of the parameters necessary to create a new post to the server
- The newly created post should then be rendered and displayed onscreen

###### removePost
- When the user clicks the delete button, a request should be made to the server that will remove the object associated with the post from the database
- The post should be removed from the DOM
### BONUS

###### showMore
- Add a button that when clicked will fetch 10 more results from the database
- The new results should be displayed onscreen below any previous results. 
- There should be no duplicate results displayed, and all results should be sequential
  - i.e. If the first 10 results are displayed onload, then the next 10 should be 11-20 in the database

###### showMore Part Deux!
- make it so that when a user scrolls, new entries are automatically fetched and displayed onscreen
