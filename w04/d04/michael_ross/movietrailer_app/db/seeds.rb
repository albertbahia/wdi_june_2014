movie_data = {
  "the_future" => {
    title: "The Future",
    year: 2011,
    poster_url: "http://ia.media-imdb.com/images/M/MV5BMTM5ODQxNTI2M15BMl5BanBnXkFtZTcwMTk3OTQyNQ@@._V1_SX214_AL_.jpg",
    plot: "When a couple decides to adopt a stray cat their perspective on life changes radically, literally altering the course of time and space and testing their faith in each other and themselves."
  },
  "paris_texas" => {
    title: "Paris, Texas",
    year: 1984,
    poster_url: "http://ia.media-imdb.com/images/M/MV5BMTUzMjU2MTA0MV5BMl5BanBnXkFtZTcwNjI2NzE5Mg@@._V1_SY317_CR5,0,214,317_AL_.jpg",
    plot: "A man wanders out of the desert after a four year absence. His brother finds him, and together they return to L.A. to reunite the man with his young son. Soon after, he and the boy set out to locate the mother of the child, who left shortly after the man disappeared."
  },
  "bad_education" => {
    title: "Bad Education",
    year: 2004,
    poster_url: "http://ia.media-imdb.com/images/M/MV5BMTIxMTc4NDQxOF5BMl5BanBnXkFtZTYwMjk3ODY3._V1_SX214_AL_.jpg",
    plot: "An examination on the effect of Franco-era religious schooling and sexual abuse on the lives of two longtime friends."
  }
}


trailer_data = {
  "the_future" => {
    title: "The Future",
    embed_url: "https://www.youtube.com/embed/y_l05MZ9y8A"
  },
  "paris_texas" => {
    title: "Paris, Texas",
    embed_url: "https://www.youtube.com/embed/9e590FeeGCM"
  },
  "bad_education" => {
    title: "Bad Education",
    embed_url: "https://www.youtube.com/embed/Ebi9rGT_RtA"
  }
}

Movie.destroy_all
Actor.destroy_all
Trailer.destroy_all


movie_data.each do |key, movie_hash|
  key = Movie.create({
    title: movie_hash[:title],
    year: movie_hash[:year],
    poster_url: movie_hash[:poster_url],
    plot: movie_hash[:plot]
    })
end

trailer_data.each do |key, trailer_hash|
  key = Trailer.create({
    title: trailer_hash[:title],
    embed_url: trailer_hash[:embed_url],
    movie: Movie.find_by(title: trailer_hash[:title])
  })
end

actor_data = {
  "miranda_july" => {
    name: "Miranda July",
    photo_url: "http://ia.media-imdb.com/images/M/MV5BMTYwOTE3MjU0MV5BMl5BanBnXkFtZTYwMDcxNDU0._V1_SX214_CR0,0,214,317_AL_.jpg",
    movie: Movie.find_by(title: "The Future")
  },
  "hamish_linklater" => {
    name: "Hamish Linklater",
    photo_url: "http://ia.media-imdb.com/images/M/MV5BOTA5MTc0NTA4OF5BMl5BanBnXkFtZTcwNDk1NTI4Nw@@._V1_SX214_CR0,0,214,317_AL_.jpg",
    movie: Movie.find_by(title: "The Future")
  },
  "harry_dean_stanton" => {
    name: "Harry Dean Stanton",
    photo_url: "http://ia.media-imdb.com/images/M/MV5BMTkyMDYyMTQ2Ml5BMl5BanBnXkFtZTYwMjU2NjE0._V1_SY98_CR2,0,67,98_AL_.jpg",
    movie: Movie.find_by(title: "Paris, Texas")
  },
  "dean_stockwell" => {
    name: "Dean Stockwell",
    photo_url: "http://ia.media-imdb.com/images/M/MV5BNjM3NTk3OTcwOV5BMl5BanBnXkFtZTcwNTUzNzgwMw@@._V1_SY317_CR32,0,214,317_AL_.jpg",
    movie: Movie.find_by(title: "Paris, Texas")
  },
  "gael_garcia_bernal" => {
    name: "Gael Garcia Bernal",
    photo_url: "http://ia.media-imdb.com/images/M/MV5BMjE5NzQ3NDc0NV5BMl5BanBnXkFtZTcwNDI0NzcwNA@@._V1_SX214_CR0,0,214,317_AL_.jpg",
    movie: Movie.find_by(title: "Bad Education")
  },
  "fele_martinez" => {
    name: "Miranda July",
    photo_url: "http://ia.media-imdb.com/images/M/MV5BMTI3OTA5MjAyNV5BMl5BanBnXkFtZTYwNDk3ODY3._V1_SY315_CR135,0,214,315_AL_.jpg",
    movie: Movie.find_by(title: "Bad Education")
  }
}


actor_data.each do |key, actor_hash|
    key = Actor.create({
      name: actor_hash[:name],
      photo_url: actor_hash[:photo_url],
      movie: actor_hash[:movie]
    })
end
