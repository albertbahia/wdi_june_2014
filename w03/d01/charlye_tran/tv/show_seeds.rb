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
  name: 'How I Met Your Mother',
  genre: 'Comedy',
  rating: 5,
  airing: false
  })

Show.create({
  name: 'Orange is the New Black',
  genre: 'Comedy',
  rating: 8,
  airing: true
  })

Show.create({
  name: 'Breaking Bad',
  genre: 'Drama',
  rating: 10,
  airing: false
  })

Show.create({
  name: 'Days of Our Lives',
  genre: 'Soap Opera',
  rating: 6,
  airing: true
  })

Show.create({
  name: 'The Simpsons',
  genre: 'Cartoon',
  rating: 10,
  airing: true
  })
