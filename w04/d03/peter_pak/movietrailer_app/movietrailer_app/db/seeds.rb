# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.destroy_all
Actor.destroy_all
Trailer.destroy_all

m1 = Movie.create({
  title: "The Mighty Ducks",
  year: 1992,
  plot: "A self-centered lawyer is sentenced to community service coaching a rag tag youth hockey team.",
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMTIzMzgxOTQwMV5BMl5BanBnXkFtZTcwMzkzNDYyMQ@@._V1_SX300.jpg"
  })

m2 = Movie.create({
  title: "Big Daddy",
  year: 1999,
  plot: "A lazy law school grad adopts a kid to impress his girlfriend, but everything doesn't go as planned and he becomes the unlikely foster father.",
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMTgwODU4MTg5M15BMl5BanBnXkFtZTcwNjM2NjkxMQ@@._V1_SX300.jpg"
  })

m3 = Movie.create({
  title: "The Conjuring",
  year: 2013,
  plot: "Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.",
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMTM3NjA1NDMyMV5BMl5BanBnXkFtZTcwMDQzNDMzOQ@@._V1_SX300.jpg"
  })

a1 = Actor.create({
  name: "Emilio Estevez",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BOTY2MDM3MDc1OV5BMl5BanBnXkFtZTcwMTQxOTkyOA@@._V1._SX2000_CR15,79,609,709_SY317_CR29,0,214,317_AL_.jpg"
  })

a2 = Actor.create({
  name: "Joshua Jackson",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTkyMTkxMzAyNF5BMl5BanBnXkFyZXN1bWU@._V1_SX214_CR0,0,214,317_AL_.jpg"
  })

a3 = Actor.create({
  name: "Adam Sandler",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMjQyNzM2MjM1Ml5BMl5BanBnXkFtZTcwMDE5NjI3Mg@@._V1_SY317_CR7,0,214,317_AL_.jpg"
  })

a4 = Actor.create({
  name: "Jon Stewart",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMjA0OTk5NTg4Nl5BMl5BanBnXkFtZTcwNjMwMjMzMQ@@._V1_SX214_CR0,0,214,317_AL_.jpg"
  })

a5 = Actor.create({
  name: "Vera Farmiga",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTM3NzMwNTc1MV5BMl5BanBnXkFtZTcwNDE2ODU2OA@@._V1_SX214_CR0,0,214,317_AL_.jpg"
  })

a6 = Actor.create({
  name: "Patrick Wilson",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTQyMTcxMDYyMl5BMl5BanBnXkFtZTcwNTA0MDczNA@@._V1_SY317_CR5,0,214,317_AL_.jpg"
  })

t1 = Trailer.create({
  title: "The Mighty Ducks",
  embed_url: "//www.youtube.com/embed/XaGFY7yjXXE"
  })

t2 = Trailer.create({
  title: "Big Daddy",
  embed_url: "//www.youtube.com/embed/J_l5fMb1oxg"
  })

t3 = Trailer.create({
  title: "The Conjuring",
  embed_url: "//www.youtube.com/embed/k10ETZ41q5o"
  })


m1.actors << a1 << a2
m2.actors << a3 << a4
m3.actors << a5 << a6

m1.trailer = t1
m2.trailer = t2
m3.trailer = t2
