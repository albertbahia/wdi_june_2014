Homework 04-05 -> 04-07

#### Learning Objectives

- Create a web app using the rMVC architecture of Rails
  - Create and run migrations
  - Seed your database
- Utilize Rails helpers (link, path, form)
- Set up ActiveRecord Associations between models
- Validate model data using ActiveRecord Validations

# World Cup Fev.r

![world cup](http://upload.wikimedia.org/wikipedia/en/thumb/e/e8/WC-2014-Brasil.svg/719px-WC-2014-Brasil.svg.png)

Your assignment for the weekend is to build a Rails application to keep track of
World Cup proceedings. You will only have to start this assignment on Friday, and
this homework should be submitted on Sunday night.

#### Player

A player should have:

- a name
- a photo_url
- a position (must be in the list "Forward", "Defender", "Midfielder", "Goalkeeper")
- a skill level (an integer between 1 and 100)
- timestamps

#### Team

A team should have:

- country
- flag_url (url to an image of the country's flag)
- manager name

#### Group

Groups and teams share a one-to-many relationship. A group has many teams and a
team belongs to a group. A group should have:

- a name

### Part 1 - Data Modeling and Database Creation

Draw ERD's for your tables and decide what relationships you will have between
teams, players, and groups. After drawing your ERD's, create your database,
create your migrations, and run your migrations so that your database schema is
good to go.

### Part 2 - Models and Seed

Define your models for teams and players. Make sure that all of the necessary
validations and relationships are established.

Create seed data for your app. You should have:
- At least 2 groups
- 4 teams per group
- At least 3 players per team

### Part 3 - Groups

Build routes, controller actions, and views for the seven deadly (RESTful)
routes for **groups**. Tackle this problem one RESTful action at a time.

Below is a step by step workflow that you may follow to set up each RESTful CRUD
action.

1. Visit the URL, verify that the error says you haven't defined the route.
1. Set up the correct route
1. Visit the URL, verify that the error says you haven't defined a controller action
1. Set up the controller action
1. Visit the URL, verify that the error says you haven't defined a view
1. Set up the view

Of course, the last two steps only apply to RESTful actions that have a view.

A group's show page should list the teams in the group.

### Part 4 - Teams

Build routes, controller actions, and views for the seven deadly (RESTful)
routes for **teams**. Tackle this problem one RESTful action at a time.

A team's show page should list the players in the team.
A team's show page should show which group a team belongs to.

### Part 5 - Players

Build routes, controller actions, and views for the seven deadly (RESTful)
routes for **players**. Tackle this problem one RESTful action at a time.

A player's show page should show which team a player belongs to.
