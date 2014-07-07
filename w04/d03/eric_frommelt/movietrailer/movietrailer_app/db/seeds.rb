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

one = Movie.create(title:"2001: A Space Odyssey", year: 1968, poster_url: "http://ia.media-imdb.com/images/M/MV5BNDYyMDgxNDQ5Nl5BMl5BanBnXkFtZTcwMjc1ODg3OA@@._V1_SX300.jpg", plot: "Humanity finds a mysterious, obviously artificial, object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.")

wargames = Movie.create(title:"War Games", year: 1983, poster_url:"http://ia.media-imdb.com/images/M/MV5BMTMyMTE3OTk3NF5BMl5BanBnXkFtZTcwOTkwNDc3NA@@._V1_SX300.jpg", plot:"A young man finds a back door into a military central computer in which reality is confused with game-playing, possibly starting World War III.")

requiem = Movie.create(title:"Requiem for a Dream", year: 2000, poster_url:"http://ia.media-imdb.com/images/M/MV5BMzM2OTYwMTY4Nl5BMl5BanBnXkFtZTcwMjU1Njg3OA@@._V1_SX300.jpg", plot:"The drug-induced utopias of four Coney Island people are shattered when their addictions become stronger.")

one.actors.push(
  Actor.create(name:"Keir Dullea", photo_url:"http://www.nndb.com/people/599/000092323/keir-dullea-1-sized.jpg"),
  Actor.create(name:"Gary Lockwood", photo_url:"http://2.bp.blogspot.com/_RD1wVpJSt_s/SgBm9joB2sI/AAAAAAAABRM/ERfXRNdKdVY/s1600-h/lockwood.jpg")
)

wargames.actors.push(
  Actor.create(name:"Matthew Broderick", photo_url:"http://ia.media-imdb.com/images/M/MV5BMTg2NjA0MzM0OF5BMl5BanBnXkFtZTcwMDU5ODAxMw@@._V1_SY317_CR20,0,214,317_AL_.jpg"),
  Actor.create(name:"Ally Sheedy", photo_url:"http://img3.wikia.nocookie.net/__cb20130209200545/p__/psychusa/images/7/79/Sheedy.jpg")
  )

requiem.actors.push(
  Actor.create(name:"Ellen Burstyn", photo_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/EllenBurstyn07TIFF.jpg/250px-EllenBurstyn07TIFF.jpg"),
  Actor.create(name:"Jared Leto", photo_url:"http://ia.media-imdb.com/images/M/MV5BMTczMjUwNDUzMF5BMl5BanBnXkFtZTgwNDA4OTAzMTE@._V1_SX214_CR0,0,214,317_AL_.jpg")
)

one.trailers.push(
  Trailer.create(title:"2001: A Space Odyssey", embed_url:"http://www.youtube.com/embed/E8TABIFAN4o")
  )

wargames.trailers.push(
  Trailer.create(title:"War Games", embed_url:"http://www.youtube.com/embed/tAcEzhQ7oqA")
)

requiem.trailers.push(
  Trailer.create(title:"Requiem for a Dream", embed_url:"//www.youtube.com/embed/jzk-lmU4KZ4")
)
