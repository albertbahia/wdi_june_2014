#
require 'active_record'
require 'pry'


#Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'tv_shows',
  adapter: 'postgresql'
})

#Define the show class

class Show < ActiveRecord::Base

end


Show.create({
    name: 'Game of Thrones',
    genre: 'fantasy',
    rating: 6,
    airing: true
})

Show.create({
  name: '24',
  genre: 'drama',
  rating: 7,
  airing: true
})

Show.create({
  name: 'Martin',
  genre: 'comedy',
  rating: 9,
  airing: true
})

Show.create({
  name: 'Sons of Anarchy',
  genre: 'drama',
  rating: 8,
  airing: true
})

Show.create({
  name: 'Oz',
  genre: 'drama',
  rating: 9,
  airing: false
})

Show.create({
  name: 'The Wire',
  genre: 'drama',
  rating: 10,
  airing: true
})
