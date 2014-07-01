require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
  })

class Show < ActiveRecord::Base
end

Show.create({
  name: 'Game Of Thrones',
  genre: 'fantasy',
  rating: 9,
  airing: true
})

Show.create({
  name: 'The Simpsons',
  genre: 'comedy',
  rating: 9,
  airing: true
})

Show.create({
  name: 'Seinfeld',
  genre: 'comedy',
  rating: 9,
  airing: false
})

Show.create({
  name: 'Boardwalk Empire',
  genre: 'drama',
  rating: 8,
  airing: true
})

Show.create({
  name: 'The Sopranos',
  genre: 'drama',
  rating: 9,
  airing: false
})

Show.create({
  name: 'Deadwood',
  genre: 'drama',
  rating: 8,
  airing: false
})

Show.create({
  name: 'Star Trek - The Next Generation',
  genre: 'sci-fi',
  rating: 8,
  airing: false
})
