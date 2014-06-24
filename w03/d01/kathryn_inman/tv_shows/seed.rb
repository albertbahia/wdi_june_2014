require "active_record"

ActiveRecord::Base.establish_connection({database: 'shows_db', adapter: 'postgresql'})

class Show < ActiveRecord::Base
end

Show.create({
  name: "Ballykissangel",
  genre: "Drama",
  rating: 8,
  airing: false
  })

Show.create({
  name: "Mushishi",
  genre: "Anime",
  rating: 10,
  airing: true
  })

Show.create({
  name: "Free!",
  genre: "Anime",
  rating: 8,
  airing: true
  })

Show.create({
  name: "Fawlty Towers",
  genre: "British Comedy",
  rating: 8,
  airing: false
  })

Show.create({
  name: "Keeping Up Appearances",
  genre: "British Comedy",
  rating: 8,
  airing: false
  })

Show.create({
  name: "Nip/Tuck",
  genre: "Drama",
  rating: 8,
  airing: false
  })
