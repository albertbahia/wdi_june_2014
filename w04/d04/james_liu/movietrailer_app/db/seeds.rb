movie1 = Movie.create(
          title: "Clerks",
          year: 1994,
          poster_url:"http://upload.wikimedia.org/wikipedia/en/6/65/Clerks_movie_poster%3B_Just_because_they_serve_you_---_.jpg",
          plot: "The life of two clerks"
          )

movie2 = Movie.create(
          title: "Mallrats",
          year: 1995,
          poster_url:"http://viewaskew.com/mallrats/images/comic/mallratsc.jpg",
          plot: "The mall"
          )

movie3 = Movie.create(
          title: "Chasing Amy",
          year: 1997,
          poster_url:"http://ia.media-imdb.com/images/M/MV5BMTY5ODMyMDY4NF5BMl5BanBnXkFtZTcwNDgwMDEyMQ@@._V1_SY317_CR5,0,214,317_AL_.jpg",
          plot: "Lesbians"
          )

movie1.actors.push(
          Actor.create(
            name: "Kevin Smith",
            photo_url:"http://ia.media-imdb.com/images/M/MV5BMTQ4NTEwNDkwM15BMl5BanBnXkFtZTcwNjU5MDAwMg@@._V1_SY317_CR27,0,214,317_AL_.jpg",
            ), 
          Actor.create(
            name: "Jason Mewes",
            photo_url: "http://www2.pictures.zimbio.com/bg/Jason+Mewes+Rome+Love+Premiere+UppJ0TMY0kJl.jpg",
            )
  )

movie2.actors.push(
          Actor.create(
            name: "Jason Lee",
            photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Jason_lee02.jpg/220px-Jason_lee02.jpg",            
          ), 
          Actor.create(
            name: "Shannon Doherty",
            photo_url: "http://ia.media-imdb.com/images/M/MV5BMTQyNzcyOTM4OF5BMl5BanBnXkFtZTcwMDc1ODkzMg@@._V1_SY317_CR8,0,214,317_AL_.jpg",            
          )
  )

movie3.actors.push(
          Actor.create(
            name: "Joey Lauren Adams",
            photo_url: "http://img1.wikia.nocookie.net/__cb20130227075342/marriedwithchildren/images/0/0b/Joey-lauren-adams.jpg",            
            ),
          Actor.create(
            name: "Ben Affleck",
            photo_url: "http://newsbusters.org/sites/default/files/main_photos/2013/December/Affleck%201209.jpg",
            )
  )


movie1.trailers.push(
          Trailer.create(
            title:"Clerks", 
            embed_url: "http://www.youtube.com/embed/JeAgPiCi94o"
            )
  )

movie2.trailers.push(
          Trailer.create(
            title:"Mallrats", 
            embed_url: "http://www.youtube.com/embed/fX-l5zUK44I"
            )
  )
movie3.trailers.push(
          Trailer.create(
            title:"Chasing Amy", 
            embed_url: "http://www.youtube.com/embed/HUK_emJcut0"
            )
  )