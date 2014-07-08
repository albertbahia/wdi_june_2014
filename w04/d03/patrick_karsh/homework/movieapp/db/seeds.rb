# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

threehundred = Movie.create(title: "300", year: "2006", plot: "King Leonidas and a force of 300 men fight the Persians at Thermopylae in 480 B.C.", poster_url: "http://ia.media-imdb.com/images/M/MV5BMjAzNTkzNjcxNl5BMl5BanBnXkFtZTYwNDA4NjE3._V1_SX300.jpg")
nineteeneightyfour = Movie.create(title: "1984", year: "1956", plot: "George Orwell's novel of a totalitarian future society in which a man whose daily work is rewriting history tries to rebel by falling in love.", poster_url: "http://ia.media-imdb.com/images/M/MV5BMTMyNjM0MjIxNF5BMl5BanBnXkFtZTcwNTc1OTc3MQ@@._V1_SX300.jpg")
paulie = Movie.create(title: "Paulie", year: "1998", plot: "Life from a parrot's point of view.", poster_url: "http://ia.media-imdb.com/images/M/MV5BNzk4MDA0ODc4M15BMl5BanBnXkFtZTcwNzU4MzA3NA@@._V1_SX300.jpg")

threehundred.actors.push(
  Actor.create(name: "Gerard Butler", photo_url: 'http://placekitten.com/200/300'),
  Actor.create(name: "Lena Headey", photo_url: 'http://placekitten.com/200/300'),
  Actor.create(name: "David Wenham", photo_url: 'http://placekitten.com/200/300')
  )

nineteeneightyfour.actors.push(
  Actor.create(name: "Edmond O'Brien", photo_url: 'http://placekitten.com/200/300'),
  Actor.create(name: "Michael Redgrave", photo_url: 'http://placekitten.com/200/300'),
  Actor.create(name: "Jan Sterling", photo_url: 'http://placekitten.com/200/300')
  )

paulie.actors.push(
  Actor.create(name: "Gena Rowlands", photo_url: 'http://placekitten.com/200/300'),
  Actor.create(name: "Tony Shalhoub", photo_url: 'http://placekitten.com/200/300'),
  Actor.create(name: "Cheech Marin", photo_url: 'http://placekitten.com/200/300')
  )
