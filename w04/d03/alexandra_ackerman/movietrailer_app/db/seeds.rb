Movie.create({
  title: "American Beauty",
  year: 1999,
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMjM4NTI5NzYyNV5BMl5BanBnXkFtZTgwNTkxNTYxMTE@._V1_SX300.jpg",
  plot: "Lester Burnham, a depressed suburban father in a mid-life crisis, decides to turn his hectic life around after becoming infatuated with his daughter's attractive friend.",
  })

Movie.create({
  title: "Horrible Bosses",
  year: 2011,
  poster_url: "http://ia.media-imdb.com/images/M/MV5BNzYxNDI5Njc5NF5BMl5BanBnXkFtZTcwMDUxODE1NQ@@._V1_SX300.jpg",
  plot: "Three friends conspire to murder their awful bosses when they realize they are standing in the way of their happiness.",
  })

Movie.create({
  title: "Eternal Sunshine of the Spotless Mind",
  year: 2004,
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_SX300.jpg",
  plot: "A couple undergo a procedure to erase each other from their memories when their relationship turns sour, but it is only through the process of loss that they discover what they had to begin with.",
  })

Actor.create({
  name: "Kevin Spacey",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTUwMjQ3NDA0Ml5BMl5BanBnXkFtZTcwMjU2MDk3OQ@@._V1_SY317_CR11,0,214,317_AL_.jpg",
  movie_id: 1
  })

Actor.create({
  name: "Jason Bateman",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTMwOTQ0MDUyNF5BMl5BanBnXkFtZTcwNTQ1MzY1Mw@@._V1_SY317_CR18,0,214,317_AL_.jpg",
  movie_id: 2
  })

Actor.create({
  name: "Kate Winslet",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BODgzMzM2NTE0Ml5BMl5BanBnXkFtZTcwMTcyMTkyOQ@@._V1_SX214_CR0,0,214,317_AL_.jpg",
  movie_id: 3
  })

Actor.create({
  name: "Jim Carrey",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTQwMjAwNzI0M15BMl5BanBnXkFtZTcwOTY1MTMyOQ@@._V1_SY317_CR22,0,214,317_AL_.jpg",
  movie_id: 3
  })

Actor.create({
  name: "Annette Bening",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMTgwOTM4MTE1M15BMl5BanBnXkFtZTcwMzc2NDQzNA@@._V1_SY317_CR5,0,214,317_AL_.jpg",
  movie_id: 1
  })

Actor.create({
  name: "Charlei Day",
  photo_url: "http://ia.media-imdb.com/images/M/MV5BMjA1ODAzNzQ5M15BMl5BanBnXkFtZTcwMzQ1ODI4Mg@@._V1._CR171,167,156,217_SY217_SX156_AL_.jpg",
  movie_id: 2
  })

Trailer.create({
  title: "American Beauty (1999) Trailer",
  embed_url: "//www.youtube.com/embed/6Q3ltyPJJMQ",
  movie_id: 1
  })

Trailer.create({
  title: "Horrible Bosses Trailer",
  embed_url: "//www.youtube.com/embed/YnzIA-yu268",
  movie_id: 2
  })

Trailer.create({
  title: "Eternal Sunshine of the Spotless Mind Official Trailer",
  embed_url: "//www.youtube.com/embed/lnSgSe2GzDc",
  movie_id: 3
  })
