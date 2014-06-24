require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

class Show < ActiveRecord::Base; end

# Mess with the database
all_shows = Show.all
puts "All Shows"
puts "--------------"
all_shows.each do |show|
  print show.name + " "
  print show.genre + " "
  print show.rating.to_s + " "
  puts show.airing
end

puts ""

dramas = Show.where({genre: 'drama'})

puts "Dramas"
puts "---------------"
dramas.each do |show|
  print show.name + " "
  puts show.genre
end
puts ""

high_rated_shows = Show.where({rating: 9})

puts "Rated 9"
puts "---------------"
high_rated_shows.each do |show|
  print show.name + " "
  puts show.rating.to_s
end
puts ""

airing_shows = Show.where({airing: true})

puts "Currently Airing"
puts "---------------"
high_rated_shows.each do |show|
  print show.name + " "
  puts show.airing
end
puts ""
