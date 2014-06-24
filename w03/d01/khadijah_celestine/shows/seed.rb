require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

class Show < ActiveRecord::Base
end

def new(name, genre, rating, airing)
  Show.create({
    name: name,
    genre: genre,
    rating: rating,
    airing: airing
    })
end

def view
  puts "All Shows"
  puts "*" * 7
  Show.all.each do |show|
    puts show.name
  end
  puts
end

view

def view_genre(genre)
  gen = Show.where({ genre: genre }) # all fantasy shows
  puts "GENRE"
  puts "*" * 7
  gen.each do |show|
    puts show.name
  end
  puts
end

view_genre('fantasy')
# View shows higher than a particular rating
# View shows that are airing
# BONUS
# Create a new show
# Get rid of a show
# Update the rating of a show
def view_shows_above(rating)
  rating = Show.where({ rating: rating })
  puts "VIEW SHOWS ABOVE"
  puts "*" * 7
  rating.each do |show|
    puts show.name
  end
  puts
end

view_shows_above(3)

def view_airing_shows()
  airing = Show.where({ airing: true })
  puts "AIRING"
  puts "*" * 7
  airing.each do |show|
    puts show.name
  end
  puts
end
view_airing_shows()

def update_rating(show)

end


# Show.create({
#   name: 'Game of Thrones',
#   genre: 'fantasy',
#   rating: 3,
#   airing: true
#   })
#
# Show.create({
#   name: 'Real House Wives of Atlanta',
#   genre: 'reality',
#   rating: 6,
#   airing: true
#   })
#
# Show.create({
#   name: 'Heroes',
#   genre: 'fantasy',
#   rating: 7,
#   airing: false
#   })
#
#
# Show.create({
#   name: 'Gamer',
#   genre: 'fantasy',
#   rating: 9,
#   airing: true
#   })
#
#
# Show.create({
#   name: 'House Hunters',
#   genre: 'home',
#   rating: 10,
#   airing: true
#   })
#
#
# Show.create({
#   name: 'Chip and Dale',
#   genre: 'cartoon',
#   rating: 1,
#   airing: false
#   })
