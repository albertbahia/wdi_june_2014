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
  genre: 'fantasy',
  rating: 9,
  airing: true
  })

Show.create({
  name: 'Oz',
  genre: 'drama',
  rating: 8,
  airing: false
  })

Show.create({
  name: 'Silicon Valley',
  genre: 'sitcom',
  rating: 7,
  airing: true
  })

Show.create({
  name: 'Sex and the City',
  genre: 'drama',
  rating: 9,
  airing: false
  })

Show.create({
  name: 'Sopranos',
  genre: 'drama',
  rating: 9,
  airing: false
  })

Show.create({
  name: 'True Detective',
  genre: 'drama',
  rating: 9,
  airing: true
  })
