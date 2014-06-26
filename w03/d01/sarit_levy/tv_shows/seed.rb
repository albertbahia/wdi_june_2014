# Require our new friend

require 'active_record'

#Connect to our database

ActiveRecord::Base.establish_connection({
  database: 'tv_shows_db',
  adapter: 'postgresql'
})

# Define the Show class

class Show < ActiveRecord::Base

end



#Let's insert information into that database

Show.create({
  name: 'Game of Thrones',
  genre: 'fantasy',
  rating: 9,
  airing: true
})

Show.create({
  name: 'Greys Anatomy',
  genre: 'drama',
  rating: 8,
  airing: true
})

Show.create({
  name: 'True Blood',
  genre: 'fantasy',
  rating: 7,
  airing: true
})

Show.create({
  name: 'Law & Oder',
  genre: 'drama',
  rating: 9,
  airing: true
})

Show.create({
  name: 'Orange is the New Black',
  genre: 'drama',
  rating: 8,
  airing: true
})

Show.create({
  name: 'Breaking Bad',
  genre: 'drama',
  rating: 10,
  airing: false
})

Show.create({
  name: 'House of Cards',
  genre: 'drama',
  rating: 9,
  airing: true
})

Show.create({
  name: 'The Daily Show with Jon Stewart',
  genre: 'comedy',
  rating: 10,
  airing: true
})

Show.create({
  name: 'Elementary',
  genre: 'mystery',
  rating: 7,
  airing: false
})
