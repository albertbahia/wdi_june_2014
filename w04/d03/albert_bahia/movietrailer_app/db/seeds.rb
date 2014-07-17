# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [
  {
    title: 'Independence Day',
    year: 1995,
    poster_url: 'http://popculture.mearsonlineauctions.com/ItemImages/000054/54757a_lg.jpeg',
    plot: 'Aliens invade Earth, but Earth fights back and wins.',
    actors: [
      {
        name: 'Will Smith',
        photo_url: 'http://ia.media-imdb.com/images/M/MV5BNTczMzk1MjU1MV5BMl5BanBnXkFtZTcwNDk2MzAyMg@@._V1_SY317_CR2,0,214,317_AL_.jpg'
      },

      {
        name: 'Jeff Goldblum',
        photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTE5NzkyODg1Nl5BMl5BanBnXkFtZTYwMTY2OTE0._V1_SY317_CR22,0,214,317_AL_.jpg'
      }
    ],
    trailers: [
      {
        title: 'Independence Day HD',
        embed_url: "//www.youtube.com/embed/d-S9nKByu5w"
      }
    ]
  },

  {
    title: 'Boondock Saints',
    year: 1999,
    poster_url: 'https://www.movieposter.com/posters/archive/main/81/MPW-40874',
    plot: 'Irishmen eliminate bad guys.',
    actors: [
      {
        name: 'Sean Patrick Flannery',
        photo_url: 'http://www.colleenpatrick.com/blog/uploaded_images/seannyboy-760212.jpg'
      },

      {
        name: 'Norman Reedus',
        photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTQ5ODE4NTgzMl5BMl5BanBnXkFtZTcwODI0MjAwMw@@._V1_SY317_CR5,0,214,317_AL_.jpg'
      }
    ],
    trailers: [
      {
        title: 'Boondock Saints Official Trailer',
        embed_url: "//www.youtube.com/embed/ydXojYfCF3I"
      }
    ]
  },

  {
    title: 'The Avengers',
    year: 2012,
    poster_url: 'http://ia.media-imdb.com/images/M/MV5BMTk2NTI1MTU4N15BMl5BanBnXkFtZTcwODg0OTY0Nw@@._V1_SX640_SY720_.jpg',
    plot: 'Superheroes defend Earth from Loki and bad company.',
    actors: [
      {
        name: 'Robert Downey Jr.',
        photo_url: 'http://geekshizzle.com/wp-content/uploads/2013/05/214_robert_downey_jr_-906173-large_image.jpg'
      },

      {
        name: 'Scarlett Johansson',
        photo_url: 'http://i3.mirror.co.uk/incoming/article3265736.ece/alternates/s927b/Scarlett-Johansson-at-the-Captain-America-Premiere-in-London.jpg'
      }
    ],
    trailers: [
      {
        title: 'The Avengers Trailer (OFFICIAL)',
        embed_url: "//www.youtube.com/embed/eOrNdBpGMv8"
      }
    ]
  }
]

actors = [
  {
    name: 'Will Smith',
    photo_url: 'http://ia.media-imdb.com/images/M/MV5BNTczMzk1MjU1MV5BMl5BanBnXkFtZTcwNDk2MzAyMg@@._V1_SY317_CR2,0,214,317_AL_.jpg'
  },

  {
    name: 'Jeff Goldblum',
    photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTE5NzkyODg1Nl5BMl5BanBnXkFtZTYwMTY2OTE0._V1_SY317_CR22,0,214,317_AL_.jpg'
  },

  {
    name: 'Sean Patrick Flannery',
    photo_url: 'http://www.colleenpatrick.com/blog/uploaded_images/seannyboy-760212.jpg'
  },

  {
    name: 'Norman Reedus',
    photo_url: 'http://ia.media-imdb.com/images/M/MV5BMTQ5ODE4NTgzMl5BMl5BanBnXkFtZTcwODI0MjAwMw@@._V1_SY317_CR5,0,214,317_AL_.jpg'
  },

  {
    name: 'Robert Downey Jr.',
    photo_url: 'http://geekshizzle.com/wp-content/uploads/2013/05/214_robert_downey_jr_-906173-large_image.jpg'
  },

  {
    name: 'Scarlett Johansson',
    photo_url: 'http://i3.mirror.co.uk/incoming/article3265736.ece/alternates/s927b/Scarlett-Johansson-at-the-Captain-America-Premiere-in-London.jpg'
  }
]

trailers = [
  {
    title: 'Independence Day HD',
    embed_url: "//www.youtube.com/embed/d-S9nKByu5w"
  },

  {
    title: 'Boondock Saints Official Trailer',
    embed_url: "//www.youtube.com/embed/ydXojYfCF3I"
  },

  {
    title: 'The Avengers Trailer (OFFICIAL)',
    embed_url: "//www.youtube.com/embed/eOrNdBpGMv8"
  }
]


movies.each do |movie|
  cur_movie = Movie.create({
    title: movie[:title],
    year: movie[:year],
    poster_url: movie[:poster_url],
    plot: movie[:plot]
  })

  movie[:actors].each do |actor|
    Actor.create({
      name: actor[:name],
      photo_url: actor[:photo_url],
      movie_id: cur_movie.id
    })
  end

  movie[:trailers].each do |trailer|
    Trailer.create({
      title: trailer[:title],
      embed_url: trailer[:embed_url],
      movie_id: cur_movie.id
      })
  end

end
