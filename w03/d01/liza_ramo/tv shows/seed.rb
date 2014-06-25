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
  name: 'Clarissa Explains it all',
  genre: 'Childrens',
  rating: 4,
  airing: false
})

Show.create({
  name: 'Are You Afraid of the Dark',
  genre: 'Childrens',
  rating: 4,
  airing: false
})

Show.create({
  name: 'Silicon Valley',
  genre: 'Comedy',
  rating: 10,
  airing: true
})

Show.create({
  name: 'My Little Pony',
  genre: 'Childrens',
  rating: 7,
  airing: false
})

Show.create({
  name: 'Orange is the New Black',
  genre: 'Dark Comedy',
  rating: 8,
  airing: true
})
