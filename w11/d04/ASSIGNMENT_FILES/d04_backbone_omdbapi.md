# Backbone + OMDBapi = OMGLOLWUT

## User Stories

* As a user, when I enter information into the search box (and click on
  'search'), I want to see a list of movies matching my search, so I can find
  the movies I am thinking of.
* As a user, when I click on a search result in the list, I want a modal to pop
  up, so I can view more details about the movies I am interested in.

## The Rails

### Your models

* **movie**
  * imdbID
  * title
  * year
  * genre
  * plot
  * poster_url
  * imdbRating

### Your routes

* **get '/'**
  * this route should serve your starting page
* **get '/movies/search'**
  * this route should accept a single search string as a query parameter
  * this route should use the search string to query OMDBapi and return a list
    of movie model objects in JSON format
* **get '/movies/:id'**
  * this route should accept a single query parameter to use as an imdbId
  * this route should use the imdbId to query OMDBapi and return the corresponding
    movie model object in JSON format

## The Backbone

**Some reminders, tips, suggestions, hints:**

* You may use the backbars gem to load required javascript libraries
* Follow the file organization we have followed in class (eg. app/assets/backbone/models/movieModal.js)
* Start by setting up your models and then collections
* Remember, you will need two different movie views (one for each search result,
  one for the detailed modal)
* Can you send query parameters when you `collection.fetch()`? Yes you can! Find
  out how. This will enable you to reuse the same collection for all searches
  without having to keep modifying the `url` property for each search.
