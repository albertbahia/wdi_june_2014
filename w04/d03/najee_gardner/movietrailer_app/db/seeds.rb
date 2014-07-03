# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movie1 = Movie.create!(Omdb.get_movie_actor_hash("Memento")[:movie])
movie2 = Movie.create!(Omdb.get_movie_actor_hash("Four Rooms")[:movie])
movie3 = Movie.create!(Omdb.get_movie_actor_hash("Inception")[:movie])

movie1.actors = Omdb.get_movie_actor_hash(movie1.title)[:actors].map do |actor_name|
  if actor = Actor.find_by(name: actor_name)
    actor
  else
    Actor.create!({name: actor_name, photo_url: "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"})
  end
end

movie2.actors = Omdb.get_movie_actor_hash(movie2.title)[:actors].map do |actor_name|
  if actor = Actor.find_by(name: actor_name)
    actor
  else
    Actor.create!({name: actor_name, photo_url: "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"})
  end
end

movie3.actors = Omdb.get_movie_actor_hash(movie3.title)[:actors].map do |actor_name|
  if actor = Actor.find_by(name: actor_name)
    actor
  else
    Actor.create!({name: actor_name, photo_url: "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"})
  end
end

movie1.trailers << Trailer.create!({title: "Memento Trailer", embed_url: "<iframe width=\"420\" height=\"315\" src=\"http://www.youtube.com/embed/0vS0E9bBSL0\" frameborder=\"0\" allowfullscreen></iframe>"})
movie2.trailers << Trailer.create!({title: "Four Rooms - Trailer", embed_url: "<iframe width=\"420\" height=\"315\" src=\"http://www.youtube.com/embed/S_Pd2pGkq54\" frameborder=\"0\" allowfullscreen></iframe>"})
movie3.trailers << Trailer.create!({title: "Inception - Official Trailer", embed_url: "<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/8hP9D6kZseM\" frameborder=\"0\" allowfullscreen></iframe>"})

movie1.trailers.first.actors = movie1.actors
movie2.trailers.first.actors = movie2.actors
movie3.trailers.first.actors = movie3.actors
