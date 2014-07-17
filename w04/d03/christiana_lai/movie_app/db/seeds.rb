Movie.destroy_all
Actor.destroy_all
Trailer.destroy_all

movie_data = {
  "Cinderella" => {
    title: "Cinderella",
    year: 1950,
    poster_url: "http://images2.fanpop.com/images/photos/7700000/Cinderella-Movie-Poster-cinderella-7790337-580-814.jpg",
    plot: "When Cinderella's cruel stepmother prevents her from attending the Royal Ball, she gets some unexpected help from the lovable mice Gus and Jaq, and from her Fairy Godmother.",
  },

  "Aladdin" => {
    title: "Aladdin",
    year: 1992,
    poster_url: "http://fc09.deviantart.net/fs71/f/2011/006/6/f/6f220f30cbdfc7347faaec00745941eb-d36l2gz.jpg",
    plot: "Aladdin, a street urchin, accidentally meets Princess Jasmine, who is in the city undercover. They love each other, but she can only marry a prince.",
  },

  "The Lion King" => {
    title: "The Lion King",
    year: 1994,
    poster_url: "http://s-tlk.org/news/tlk-new-poster.jpg",
    plot: "Lion cub and future king Simba searches for his identity. His eagerness to please others and penchant for testing his boundaries sometimes gets him into trouble.",
  },
}

actor_data = {
  "Cinderella" => [{
    :name=> "Ilene Woods",
    :photo_url=> "http://images5.fanpop.com/image/polls/1079000/1079125_1342694762970_full.jpg",
    },

    {
    :name=> "Eleanor Audley",
    :photo_url=> "http://upload.wikimedia.org/wikipedia/en/0/03/Eleanor_Audley.jpg",
    }
  ],

  "Aladdin" => [{
    :name=> "Robin Williams",
    :photo_url=> "http://upload.wikimedia.org/wikipedia/commons/0/05/Robin_Williams_2011a_%282%29.jpg",
    },

    {
    :name=> "Scott Weinger",
    :photo_url=> "http://content7.flixster.com/photo/30/76/68/3076685_ori.jpg",
    }
  ],

  "The Lion King" => [{
    :name=> "James Earl Jones",
    :photo_url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/1/15/James_Earl_Jones_2010_Crop.jpg/400px-James_Earl_Jones_2010_Crop.jpg",
    },

    {
    :name=> "Jeremy Irons",
    :photo_url=> "http://upload.wikimedia.org/wikipedia/commons/f/f1/Jeremy_Irons.jpg",
    }
  ]
}

trailer_data = {
  "Cinderella" => [{
    :title=> "Original 1950 Trailer",
    :embed_url=> "http://www.youtube.com/embed/CUxAlnYP5aU",
  }],

  "Aladdin" => [{
    :title=> "Aladdin Trailer",
    :embed_url=> "http://www.youtube.com/embed/QapaqcDucmg",
  }],

  "The Lion King" => [{
    :title=> "The Lion King (Trailer)",
    :embed_url=> "http://www.youtube.com/embed/4sj1MT05lAA",
  }]
}

movie_data.each do |movie_title, movie_hash|
  current_movie = Movie.create!({
    title:       movie_hash[:title],
    year:        movie_hash[:year],
    poster_url:  movie_hash[:poster_url],
    plot:        movie_hash[:plot]
    })

  actor_data[current_movie.title].each do |actor|
    Actor.create!({
      name:       actor[:name],
      photo_url:  actor[:photo_url],
      movie_id:   current_movie.id
      })
  end

  trailer_data[current_movie.title].each do |trailer|
    Trailer.create!({
      title:      trailer[:title],
      embed_url:  trailer[:embed_url],
      movie_id:   current_movie.id
      })
  end
end
