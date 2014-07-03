Homework 04-03 -> 04-04

#### Learning Objectives
- Create a web app using the Rails framework
- Implement an API into a Rails app.
- Utilize Rails helpers (link, path, form)
- Validate model data using ActiveRecord Validations

# MovieTrail.er
Your assignment is to build an app to keep track of your favorite movies, look at photos of actors in that movie, and watch the trailers that came out for that movie. Your app will utilize the [omdbAPI](http://www.omdbapi.com/)

#### Movie
A movie should have:
- a title
- a year
- a poster_url
- a plot
- timestamps

#### Actor
A actor should have:
- a name
- a photo_url
- timestamps

#### Trailer
A trailer should have:
- a title
- an embed_url
- __NOTE__: Check out [how to embed a youtube video](https://developers.google.com/youtube/player_parameters#Embedding_a_Player)
- timestamps

### Part 1 - Data Modeling and Database Creation
Draw ERD's for your table and decide what relationships you will have between movies, actors, and trailers. After drawing your ERD's, create your database, define and run your migrations.

### Part 2 - Models and Seed
Define your models for actors, movies, and trailers. Make sure that all of the necessary relationships are established.

Create seed data for your app. You should have:
- At least 3 movies
- At least 2 actors per movie
- At least 1 trailer per movie

For pratice, use the API's documentation and website to get the data for your movies (poster, actors, plot information, year). You can perform sample searches and view the JSON response on their website.

### Part 3 - Validations
Add validations to your models.

### Part 3 - Routes, Controllers & Views
Build your app one step at a time. Start with the Movie routes, the Movie controller, and the Movie views. Once all of those parts are working, move on to Actors, then Trailers.

### Part 4 - Deploy!
Figure out how to deploy your app to Heroku! The guide walks through step by how to host your Rails app on Heroku's servers. If you do not have a Heroku account then make one.
- [Heroku Rails Guide](https://devcenter.heroku.com/articles/getting-started-with-rails4)

### Part 5 - API integration
Create a new model for the omdbAPI. Define a new route for your Movie controller that will allow a user to search for a movie using the omdbAPI. There should be a button next to each of the search results that when clicked will create a new entry in the database for that movie and at least 2 actors in that movie. The user should then be redirected to that new movie's show page.

### BONUS - Nested Resources
Try to refactor your code to use nested resources. Look at the Rails Guides.
