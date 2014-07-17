# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
Actor.destroy_all
Trailer.destroy_all

movie_data = {
  "Inception" => {
    title: "Inception",
    year: 2010,
    poster_url: "http://ia.media-imdb.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg",
    plot: "A skilled extractor is offered a chance to regain his old life as payment for a task considered to be impossible.",
  },
  "Godzilla" => {
    title: "Godzilla",
    year: 2014,
    poster_url: "http://ia.media-imdb.com/images/M/MV5BMTQ0ODgzNjg2MV5BMl5BanBnXkFtZTgwNDkxMzc3MDE@._V1_SX300.jpg",
    plot: "The world's most famous monster is pitted against malevolent creatures who, bolstered by humanity's scientific arrogance, threaten our very existence."
  },
  "The Dark Knight" => {
    title: "The Dark Knight",
    year: 2008,
    poster_url: "http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg",
    plot: "When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level."
  }
}

actor_data = {
  "Inception" => [{
    :name => "Leonardo DiCaprio",
    :photo_url => "http://images.boomsbeat.com/data/images/full/32034/422817_original-jpg.jpg",
    },
  {
    :name => "Joseph Gordon-Levitt",
    :photo_url => "http://upload.wikimedia.org/wikipedia/commons/7/7d/Joseph_Gordon-Levitt_2013.jpg"
  }],
  "Godzilla" => [
    {
      :name => "Aaron Taylor-Johnson",
      :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Aaron_Taylor-Johnson_by_Gage_Skidmore.jpg/440px-Aaron_Taylor-Johnson_by_Gage_Skidmore.jpg"
    },
    {
      :name => "Bryan Cranston",
      :photo_url => "http://upload.wikimedia.org/wikipedia/commons/a/a5/Bryan_Cranston_Peabody_2014.jpg"
    }
  ],
  "The Dark Knight" => [
    {
      :name => "Christian Bale",
      :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Christian_Bale_2014_%28cropped%29.jpg/800px-Christian_Bale_2014_%28cropped%29.jpg"
    },
    {
      :name => "Heath Ledger",
      :photo_url => "http://upload.wikimedia.org/wikipedia/commons/4/4f/Heath_Ledger.jpg"
    }
  ]
}

trailer_data = {
  "Inception" => [{
    :title => "Inception Trailer 2",
    :embed_url => "http://www.youtube.com/embed/66TuSJo4dZM"
    }],
  "Godzilla" => [{
    :title => "Godzilla Official Extended Trailer",
    :embed_url => "http://www.youtube.com/embed/I-EEqJ9HyTk"
    }],
  "The Dark Knight" => [{
    :title => "The Dark Knight HD",
    :embed_url => "http://www.youtube.com/embed/yQ5U8suTUw0"
    }]
}

movie_data.each do |movie_title, movie_hash|
  current_movie = Movie.create!({
    title:      movie_hash[:title],
    year:       movie_hash[:year],
    poster_url: movie_hash[:poster_url],
    plot:       movie_hash[:plot]
    })

  actor_data[current_movie.title].each do |actor|
    Actor.create!({
      name:      actor[:name],
      photo_url: actor[:photo_url],
      movie_id:  current_movie.id
      })
  end

  trailer_data[current_movie.title].each do |trailer|
    Trailer.create!({
      title:     trailer[:title],
      embed_url: trailer[:embed_url],
      movie_id:  current_movie.id
      })
  end
end
