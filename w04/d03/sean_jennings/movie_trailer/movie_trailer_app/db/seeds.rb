require_relative 'movie_data'

movie_info = movie_data

movie_info.each do |movie|

    movie_obj = Movie.create({
      title: movie[:name],
      year:  movie[:year],
      poster_url: movie[:poster_url],
      plot: movie[:plot]
      })

    movie[:actors].each do |actor|

    Actor.create({
      name: actor[:name],
      photo_url: actor[:photo_url],
      movie_id: movie_obj.id
      })

    end

    Trailer.create({
      title: movie[:trailer][:title],
      embed_url: movie[:trailer][:embed_url],
      movie_id: movie_obj.id
      })
end
