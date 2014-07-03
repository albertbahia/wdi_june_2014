movies =  [
  {
  title: "The GodFather",
  year: 1977,
  poster_url: "http://upload.wikimedia.org/wikipedia/en/4/4d/Godfather.jpg",
  plot: "mafia movie"
  },
  {
  title: "Menace II Society",
  year: 1993,
  poster_url: "http://images.moviepostershop.com/menace-ii-society-movie-poster-1993-1020189740.jpg",
  plot: "Hood movie"
  },
  {
  title: "Hitch",
  year: 2005,
  poster_url: "http://ia.media-imdb.com/images/M/MV5BNzYyNzM2NzM2NF5BMl5BanBnXkFtZTcwNjg5NTQzMw@@._V1_SX214_AL_.jpg",
  plot: "RomCom movie"
  }
]

movies.each do |m|
  Movie.create(m)
end

actors = [
  {
  name: "Marlon Brando", photo_url: "http://upload.wikimedia.org/wikipedia/en/2/21/Godfather15_flip.jpg"
  },
  {
  name: "Al Pacino", photo_url: "http://rubysohosaigon.com/wp-content/uploads/2012/09/Al-Pacino-2-C992CRIDK2-1024x768.jpg"
  },
  {
  name: "Larenz Tate", photo_url: "http://www-deadline-com.vimg.net/wp-content/uploads/2012/10/tate__121023191701-275x401.png"
  },
  {
  name: "Jada Pinkett", photo_url: "http://images.latinpost.com/data/images/full/2637/jada-pinkett-smith.jpg"
  },
  {
  name: "Will Smith", photo_url: "https://www.berlinale.de/media/60_jubilaeum_1/starportraits/2005_4/2005-5823SmithWill_IMG_x900.jpg"
  },
  {
  name: "Eva Mendes", photo_url: "http://4.bp.blogspot.com/--OaGvwUYQGo/T2J5w2wjYII/AAAAAAAAC74/trExcKZJzzU/s1600/Eva-Mendes-substance-abuse.jpg"
  }
]

actors.each do |a|
  Actor.create(a)
end

trailers =  [
  {
  title: "The Godfather Trailer",
  embed_url: "https://www.youtube.com/watch?v=sY1S34973zA&feature=kp"
  },
  {
  title: "Menace II Society Theatrical Trailer",
  embed_url: "https://www.youtube.com/watch?v=CD2pjnGy8Fk&feature=kp"
  },
  {
  title: "Hitch Trailer",
  embed_url: "https://www.youtube.com/watch?v=lp--Un6fNro"
  }
]

trailers.each do |t|
  Trailer.create(t)
end
