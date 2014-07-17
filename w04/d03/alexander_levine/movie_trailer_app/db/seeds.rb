Movie.destroy_all
Actor.destroy_all
Trailer.destroy_all


movie1 = Movie.create({
  title: "The Godfather",
  year: "1972",
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX300.jpg",
  plot: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."
  })

movie2 = Movie.create({
  title: "Clerks",
  year: "2000",
  poster_url: "http://ia.media-imdb.com/images/M/MV5BNDY3NjQwMjg2NF5BMl5BanBnXkFtZTcwMTYwMjAyMQ@@._V1_SX300.jpg",
  plot: "The continuing adventures of clerks Dante and Randal, who try to make the best of their menial labor, with no help from Jay and Silent Bob."
  })

movie3 = Movie.create({
  title: "True Lies",
  year: "1994",
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMTM4OTIzNjcxM15BMl5BanBnXkFtZTcwMjc2MzE2MQ@@._V1_SX300.jpg",
  plot: "Harry Tasker is a secret agent for the United States Government. For years, he has kept his job from his wife, but is forced to reveal his identity and try to stop nuclear terrorists when he and his wife are kidnapped by the terrorists."
  })

actor1 = Actor.create({
  name: "Arnold Schwarzenegger",
  photo_url: "http://cf.badassdigest.com/_uploads/images/30792/arnold-schwarzenegger-movies__span.jpg"
  })

actor2 = Actor.create({
  name: "Jamie Lee Curtis",
  photo_url: "http://www.tvweek.com/blogs/tvbizwire/assets_c/2013/07/jamie-lee-curtis-thumb-270x400-6099.jpg"
  })

actor3 = Actor.create({
  name: "Marlon Brando",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTg3MDYyMDE5OF5BMl5BanBnXkFtZTcwNjgyNTEzNA@@._V1_SY317_CR97,0,214,317_AL_.jpg"
  })

actor4 = Actor.create({
  name: "Al Pacino",
  photo_url: "http://upload.wikimedia.org/wikipedia/commons/9/98/Al_Pacino.jpg"
  })

actor5 = Actor.create({
  name: "Kevin Smith",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTQ4NTEwNDkwM15BMl5BanBnXkFtZTcwNjU5MDAwMg@@._V1_SY317_CR27,0,214,317_AL_.jpg"
  })

actor6 = Actor.create({
  name: "Jason Mewes",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMjE4MTU3MDYwNV5BMl5BanBnXkFtZTcwNjQ2OTUwOA@@._V1_SY317_CR0,0,214,317_AL_.jpg"
  })

trailer1 = Trailer.create({
  title: "The Godfather",
  embed_url: "<iframe width='420' height='315' src='http://www.youtube.com/embed/5DO-nDW43Ik' frameborder='0' allowfullscreen></iframe>"
  })

trailer2 = Trailer.create({
  title: "Clerks",
  embed_url: "<iframe width='560' height='315' src=http:'//www.youtube.com/embed/Mlfn5n-E2WE' frameborder='0' allowfullscreen></iframe>"
  })

trailer3 = Trailer.create({
  title: "True Lies",
  embed_url: "<iframe width='420' height='315' src=http:'//www.youtube.com/embed/3B7HG8_xbDw' frameborder='0' allowfullscreen></iframe>"
  })

movie1.actors << actor3 << actor4
movie2.actors << actor5 << actor6
movie3.actors << actor1 << actor2

movie1.trailers << trailer1
movie2.trailers << trailer2
movie3.trailers << trailer3
