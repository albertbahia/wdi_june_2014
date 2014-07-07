batman = Movie.create(title: "Batman", year: 1989, poster_url: "http://ia.media-imdb.com/images/M/MV5BMTYwNjAyODIyMF5BMl5BanBnXkFtZTYwNDMwMDk2._V1_SX300.jpg", plot: 'The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.')
goonies = Movie.create(title: "The Goonies", year: 1985, poster_url:"http://ia.media-imdb.com/images/M/MV5BMTY1Mzk3MTg0M15BMl5BanBnXkFtZTcwOTQzODYyMQ@@._V1_SX300.jpg", plot: 'A group of kids set out on an adventure in search of pirate treasure that could save their homes from foreclosure')
robocop = Movie.create(title:"RoboCop", year: 1987, poster_url:"http://ia.media-imdb.com/images/M/MV5BMTk1MDUzMTQ3OV5BMl5BanBnXkFtZTcwMDAwNTk0NA@@._V1_SX300.jpg",plot: 'In a dystopic and crime-ridden Detroit, a terminally wounded cop returns to the force as a powerful cyborg haunted by submerged memories.')

batman.actors.push(
  Actor.create(name:"Michael Keaton", photo_url:"https://lh3.googleusercontent.com/-_rUX9_hf70A/Uu_d59wkThI/AAAAAAAA-sk/m_b9We3D3Ow/tumblr_inline_mzppneDsIG1rllljr.gif"), 
  Actor.create(name:"Jack Nicholson", photo_url:"http://www.moviemoviesite.com/People/N/nicholson_jack/jacknicholson2.jpg")
  )

goonies.actors.push(
  Actor.create(name:"Sean Astin", photo_url:"http://www.teenidols4you.com/blink/Actors/seanastin/seanastin_1304200069.jpg"), 
  Actor.create(name:"Josh Brolin", photo_url:"http://pmcmovieline.files.wordpress.com/2013/01/130108_brolin.jpg?w=251&h=355")
  )

robocop.actors.push(
  Actor.create(name:"Peter Weller", photo_url:"http://collider.com/wp-content/uploads/robocop-peter-weller.jpg"),
  Actor.create(name:"Nancy Allen", photo_url:"http://www.nndb.com/people/088/000025013/nancy-allen-1-sized.jpg")
  )


batman.trailers.push(Trailer.create(title:"Batman", embed_url: "http://www.youtube.com/embed/cPLUeA4vwik"))
goonies.trailers.push(Trailer.create(title:"The Goonies", embed_url: "http://www.youtube.com/embed/51LY9ocoCi8"))
robocop.trailers.push(Trailer.create(title:"RoboCop", embed_url: "http://www.youtube.com/embed/zbCbwP6ibR4"))

batman.trailers.push(Trailer.create(title:"Batman", embed_url: "http://www.youtube.com/embed/cPLUeA4vwik"))
goonies.trailers.push(Trailer.create(title:"The Goonies", embed_url: "http://www.youtube.com/embed/51LY9ocoCi8"))
robocop.trailers.push(Trailer.create(title:"RoboCop", embed_url: "http://www.youtube.com/embed/zbCbwP6ibR4"))