require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

class Show < ActiveRecord::Base

end

Show.create({
  name: 'Game Of Thrones',
  genre: 'Fantasy',
  rating: 9,
  airing: true
})

Show.create({
  name: 'Star Trek',
  genre: 'Science Fiction',
  rating: 8,
  airing: false
})

Show.create({
  name: 'Lost',
  genre: 'Science Fiction',
  rating: 9,
  airing: false
})

Show.create({
  name: 'True Blood',
  genre: 'Fantasy',
  rating: 5,
  airing: true
})

Show.create({
  name: 'Breaking Bad',
  genre: 'Drama',
  rating: 10,
  airing: false
})

Show.create({
  name: 'True Detective',
  genre: 'Drama',
  rating: 10,
  airing: true
})
