# Require our new friend
require 'active_record'
require 'pry'

# Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
  })

# Define the Show class
class Show < ActiveRecord::Base
end

# Let's insert information into that database
Show.create({
  name: 'Game of Thrones',
  genre: 'Fantasy',
  rating: 9,
  airing: true
  })

Show.create({
  name: 'Portlandia',
  genre: 'Comedy',
  rating: 8,
  airing: true
  })

Show.create({
  name: 'Flight of the Conchords',
  genre: 'Comedy',
  rating: 9,
  airing: false
  })

Show.create({
  name: 'Orange is the New Black',
  genre: 'Drama',
  rating: 8,
  airing: true
  })

Show.create({
  name: 'Lost',
  genre: 'Drama',
  rating: 9,
  airing: false
  })

Show.create({
  name: 'Adventure Time',
  genre: 'Animation',
  rating: 9,
  airing: true
  })

Show.create({
  name: 'Planet Earth',
  genre: 'Documentary',
  rating: 8,
  airing: false
  })
