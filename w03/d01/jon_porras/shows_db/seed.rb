require 'active_record'

ActiveRecord:: Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql',
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
    name: 'Saved by the Bell',
    genre: 'sitcom',
    rating: 4,
    airing: false
})

Show.create({
    name: 'True Detective',
    genre: 'drama',
    rating: 8,
    airing: true
})

Show.create({
    name: 'Family Matters',
    genre: 'sitcom',
    rating: 10,
    airing: false
})

Show.create({
    name: 'Star Trek',
    genre: 'sci-fi',
    rating: 8,
    airing: false
})

Show.create({
    name: 'Alf',
    genre: 'sitcom',
    rating: 7,
    airing: false
})
