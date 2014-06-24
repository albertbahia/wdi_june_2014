# Require our friend
require 'active_record'

# Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

# Set up our class
class Show < ActiveRecord::Base
end

# Get all shows
puts '   ALL SHOWS'
puts '---------------'
Show.all.each do |show|
  puts show.name
end
puts

# Get all drama shows
puts '   DRAMA SHOWS '
puts '---------------'
Show.where({ genre: 'drama' }).each do |show|
  puts show.name
end
puts

# Get all shows == 9
puts '   Rating 9 SHOWS '
puts '---------------------'
Show.where({ rating: 9 }).each do |show|
  puts show.name
end
puts

# Get all airing shows
puts '   AIRING SHOWS'
puts '-------------------'
Show.where({ airing: true }).each do |show|
  puts show.name
end
puts
