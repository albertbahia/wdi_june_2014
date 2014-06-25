# Require our new friend
require 'active_record'

# Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
  })

# define the class
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
  name: 'Boy Meets World',
  genre: 'Sitcom',
  rating: 10,
  airing: false
  })

Show.create({
  name: 'West Wing',
  genre: 'Drama',
  rating: 10,
  airing: false
  })

Show.create({
  name: 'Suits',
  genre: 'Drama',
  rating: 8,
  airing: true
  })

Show.create({
  name: 'Friends',
  genre: 'Sitcom',
  rating: 7,
  airing: false
  })

Show.create({
  name: 'Louie',
  genre: 'Comedy',
  rating: 8,
  airing: true
  })
