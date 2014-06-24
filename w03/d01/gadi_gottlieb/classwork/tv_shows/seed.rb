require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

# Define the Show class

class Show < ActiveRecord::Base
end


# Let's insert information into that database

Show.create({
  name: 'Game Of Thrones',
  genre: 'Fantasy',
  rating: 9,
  airing: true
})

Show.create({
  name: 'Chappelle Show',
  genre: 'Comedy',
  rating: 10,
  airing: false
})

Show.create({
  name: 'Family Guy',
  genre: 'Comedy',
  rating: 8,
  airing: true
})

Show.create({
  name: 'The Walking Dead',
  genre: 'Horror',
  rating: 8,
  airing: true
})

Show.create({
  name: 'American Horror Story',
  genre: 'Horror',
  rating: 5,
  airing: true
})

Show.create({
  name: '24',
  genre: 'Action',
  rating: 9,
  airing: true
})
