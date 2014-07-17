
Movie.destroy_all
Actor.destroy_all
Trailer.destroy_all

stardust = Movie.create(
  title: "Stardust", year: 2007,
  poster_url: "http://ia.media-imdb.com/images/M/MV5BMjkyMTE1OTYwNF5BMl5BanBnXkFtZTcwMDIxODYzMw@@._V1_SX214_AL_.jpg",
  plot: "In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he'll retrieve a fallen star by venturing into the magical realm."
)

perfume = Movie.create(
  title: "Perfume: The Story of a Murderer",
  year: 2006,
  poster_url:"http://ia.media-imdb.com/images/M/MV5BMTI0NjUyMTk3Nl5BMl5BanBnXkFtZTcwOTA5MzkzMQ@@._V1_SX214_AL_.jpg",
plot: "Jean-Baptiste Grenouille, born with a superior olfactory sense, creates the world's finest perfume. His work, however, takes a dark turn as he searches for the ultimate scent."
)

chocolat = Movie.create(
  title:"Chocolat",
  year: 2000,
  poster_url:"http://ia.media-imdb.com/images/M/MV5BMjA4MDI3NTQwMV5BMl5BanBnXkFtZTcwNjIzNDcyMQ@@._V1_SY317_CR1,0,214,317_AL_.jpg",
  plot: "A woman and her daughter open a chocolate shop in a small French village that shakes up the rigid morality of the community."
)

stardust.actors.push(
  Actor.create(
    name:"Claire Danes",
    photo_url:"http://ia.media-imdb.com/images/M/MV5BMTMyMzQ1Mjk3M15BMl5BanBnXkFtZTcwNzk3ODMxNw@@._V1_SY317_CR15,0,214,317_AL_.jpg"
  ),
  Actor.create(
    name:"Charlie Cox",
    photo_url:"http://ia.media-imdb.com/images/M/MV5BMTkyMzM4ODAyM15BMl5BanBnXkFtZTYwOTg1MjYz._V1_SY317_CR6,0,214,317_AL_.jpg"
  )
)

perfume.actors.push(
  Actor.create(
    name:"Ben Whishaw",
    photo_url:"http://ia.media-imdb.com/images/M/MV5BMTc1MDYzNzY4MF5BMl5BanBnXkFtZTcwMDcwNzU0OA@@._V1_SX214_CR0,0,214,317_AL_.jpg"
  ),
  Actor.create(
    name:"Alan Rickman",
    photo_url:"http://ia.media-imdb.com/images/M/MV5BMTUwNTc4MTg4Ml5BMl5BanBnXkFtZTcwNDY2MjkxOA@@._V1_SY317_CR10,0,214,317_AL_.jpg"
  )
)

chocolat.actors.push(
  Actor.create(
    name:"Juliette Binoche",
    photo_url:"http://ia.media-imdb.com/images/M/MV5BMTUzMzI4MDQ5Nl5BMl5BanBnXkFtZTYwOTQ5NTc0._V1_SX214_CR0,0,214,317_AL_.jpg"
  ),
  Actor.create(
    name:"Johnny Depp",
    photo_url:"http://ia.media-imdb.com/images/M/MV5BMTM0ODU5Nzk2OV5BMl5BanBnXkFtZTcwMzI2ODgyNQ@@._V1_SY317_CR4,0,214,317_AL_.jpg"
  )
)


stardust.trailers.push(Trailer.create(
  title:"Stardust",
  embed_url: "http://www.youtube.com/embed/fkHnumjuHL8"
  )
)
perfume.trailers.push(Trailer.create(
  title:"Perfume: The Story of a Murderer",
  embed_url: "http://www.youtube.com/embed/zutiIw_2e2g"
  )
)
chocolat.trailers.push(Trailer.create(
  title:"Chocolat",
  embed_url: "http://www.youtube.com/embed/32x33l2sLe8"
  )
)
