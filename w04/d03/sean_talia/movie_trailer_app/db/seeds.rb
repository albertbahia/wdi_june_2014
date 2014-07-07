# actors_array = [
#   {
#     name: 'Robert Downey Jr.',
#     photo_url: 'http://searchednews.com/wp-content/uploads/2014/06/Robert-Downey-JR-7.jpg'
#   },
#   {
#     name: 'Terrence Howard',
#     photo_url: 'http://www-deadline-com.vimg.net/wp-content/uploads/2010/07/terrence-howard1-225x300.jpg'
#   },
#   {
#     name: 'Josh Brolin',
#     photo_url: 'http://static.tvtropes.org/pmwiki/pub/images/josh-brolin_323.jpg'
#   },
#   {
#     name: 'Javier Bardem',
#     photo_url: 'http://media3.onsugar.com/files/2013/01/01/5/192/1922398/2c0f13d74978ac61_154976438.xxxlarge_2.jpg'
#   },
#   {
#     name: 'Leonardo DiCaprio',
#     photo_url: 'http://ia.media-imdb.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_SY317_CR10,0,214,317_AL_.jpg'
#   },
#   {
#     name: 'Jonah Hill',
#     photo_url: 'http://www.aceshowbiz.com/images/wennpic/jonah-hill-36th-annual-toronto-international-film-festival-03.jpg'
#   }
# ]
#
# trailers_array = [
#   {
#     title: 'Iron Man Trailer #1',
#     embed_url: 'www.youtube.com/embed/8hYlB38asDY'
#   },
#   {
#     title: 'No Country for Old Men Trailer #1',
#     embed_url: 'www.youtube.com/embed/YOohAwZOSGo'
#   },
#   {
#     title: 'The Wolf of Wall Street Trailer #1',
#     embed_url: 'www.youtube.com/embed/iszwuX1AK6A'
#   }
# ]

movies = [
  {
    title: 'Iron Man',
    year: 2008,
    poster_url: 'http://ia.media-imdb.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SX300.jpg',
    plot: 'Tony Stark a.k.a. Iron Man totally kills it.',
    actors: [
      {
        name: 'Robert Downey Jr.',
        photo_url: 'http://searchednews.com/wp-content/uploads/2014/06/Robert-Downey-JR-7.jpg'
      },
      {
        name: 'Terrence Howard',
        photo_url: 'http://www-deadline-com.vimg.net/wp-content/uploads/2010/07/terrence-howard1-225x300.jpg'
      }
    ],
    trailers: [
      {
        title: 'Iron Man Trailer #1',
        embed_url: 'www.youtube.com/embed/8hYlB38asDY'
      }
    ]
  },
  {
    title: 'No Country for Old Men',
    year: 2007,
    poster_url: 'http://ia.media-imdb.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg',
    plot: 'Anton Chigeur totally kills it.',
    actors: [
      {
        name: 'Josh Brolin',
        photo_url: 'http://static.tvtropes.org/pmwiki/pub/images/josh-brolin_323.jpg'
      },
      {
        name: 'Javier Bardem',
        photo_url: 'http://media3.onsugar.com/files/2013/01/01/5/192/1922398/2c0f13d74978ac61_154976438.xxxlarge_2.jpg'
      }
    ],
    trailers: [
      {
        title: 'No Country for Old Men Trailer #1',
        embed_url: 'www.youtube.com/embed/YOohAwZOSGo'
      }
    ]
  },
  {
    title: 'The Wolf of Wall Street',
    year: 2013,
    poster_url: 'http://ia.media-imdb.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SX300.jpg',
    plot: 'Jordan Belfort totally kills it.',
    actors: [
      {
        name: 'Leonardo DiCaprio',
        photo_url: 'http://ia.media-imdb.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_SY317_CR10,0,214,317_AL_.jpg'
      },
      {
        name: 'Jonah Hill',
        photo_url: 'http://www.aceshowbiz.com/images/wennpic/jonah-hill-36th-annual-toronto-international-film-festival-03.jpg'
      }
    ],
    trailers: [
      {
        title: 'The Wolf of Wall Street Trailer #1',
        embed_url: 'www.youtube.com/embed/iszwuX1AK6A'
      }
    ]
  }
]

movies.each do |movie|
  current_movie = Movie.create({
    title: movie[:title],
    year: movie[:year],
    poster_url: movie[:poster_url],
    plot: movie[:plot]
    })
  movie[:actors].each do |actor|
    current_actor = Actor.create!(actor)
    current_movie.actors << current_actor
  end
  movie[:trailers].each do |trailer|
    current_trailer = Trailer.create!(trailer)
    current_movie.trailers << current_trailer
  end
end
