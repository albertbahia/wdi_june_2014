Homework 04-02

#### Learning Objectives
- Create a web app using the rMVC architecture of Rails
- Utilize Rails conventions to create database tables and seed them
- Utilize Rails form, link and path helpers
- Review

## Step 1 - Boilerplate
Create a new rails app called `moma_app`. Make sure that your database is set to PostgreSQL when you initialize your rails app. Create your database. Include the `pry-rails` gem and bundle install again.

## Step 2 - Migrations and Tables
You will have two tables, one for artists and one for paintings. There exists a one-to-many relationship between artists and paintings.

Generate a new migration for artists. An artist entry should have:
- a name
- a photo_url
- a nationality
- a birthday
- timestamps

Run your migration

Generate a new migration for paintings. A painting entry should have:
- an img_url
- a title
- a year_painted
- a description
- timestamps
__Name your table columns as written__

Run your migration

Seed your database with 3 artists, having 3 paintings each.

## Step 3 - Routing, Controllers and Views
Define your routes and controllers for artists and paintings. Define the necessary views for both artists and paintings.

- Your homepage should show a list of all artists, and when clicked should take the user to the artist's show page. There should also be a link to view all paintings.

######Artists
- The show page should list all of the artist's information, as well as all paintings belonging to that artist. Each painting should have a link that will take you to that painting's show page. There should be a link to edit the artist that will take the user to the edit page
- The edit page should display a button allowing a user to remove the artist from the database. If an artist is deleted then all of the artist's paintings should be deleted from the database.
- A user should be able to create a new artist.

###### Paintings
- The paintings index should list all paintings in the database with the title and year painted. When clicked the user should take the user to the painting show page
- The painting show page should display ALL information related to the painting, including the artist. There should be a link to edit the painting. There should be a link to view the painting's artist.
- The painting edit page should allow a user to delete a painting from the database.
- The painting new page should display a form that allows a user to create a new painting. There should be a dropdown menu displaying all artists currently in the database. A painting should NOT be added without an artist_id. All paintings must be assigned to an artist on creation.

A user should easily be able to get to the homepage from any section of the site. If a user is on the painting show page they should be able to click a link to go back to the painting index page.

## Step 4 - REVIEW

- Look at your work and compare it against the specifications of the assignment. Make sure your app has the functionality you expect.
- Make sure all necessary buttons/links are present
- Step through the process of using your site. Click every button, submit every form.

Refactor twdir to use link, path and form helpers.

## BONUS

Look at the rails guide for [nested resources](http://guides.rubyonrails.org/routing.html#nested-resources). Try to implement nested resources for artists and paintings.