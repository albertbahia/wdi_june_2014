require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

class Show < ActiveRecord::Base
end

Show.create({
  name: 'Game of Thrones',
  genre: 'fantasy',
  rating: 9,
  airing: true
})

Show.create({
  name: 'Breaking Bad',
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

Show.create({
  name: 'Lost',
  genre: 'sci-fi',
  rating: 7,
  airing: false
})

Show.create({
  name: 'Jeopardy',
  genre: 'trivia',
  rating: 6,
  airing: true
})

Show.create({
  name: 'Attack on Titan',
  genre: 'action',
  rating: 10,
  airing: true
})
