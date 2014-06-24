# Require our friend
require 'active_record'
require 'pry'

# Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
  })

# Define the Show class
class Show < ActiveRecord::Base
end

# Get all shows
puts '---------------'
puts '   ALL SHOWS   '
puts '---------------'
Show.all.each do |show|
  puts show.name
end


# Get all Comedy shows
puts '----------------------'
puts '   ALL COMEDY SHOWS   '
puts '----------------------'
Show.where({ genre: 'Comedy' }).each do |show|
  puts show.name
end


# Get all shows rating == 9
puts '--------------------'
puts '   RATING 9 SHOWS   '
puts '--------------------'
Show.where({ rating: 9 }).each do |show|
  puts show.name
end


# Get all airing shows
puts '----------------------'
puts '   ALL AIRING SHOWS   '
puts '----------------------'
Show.where({ airing: true }).each do |show|
  puts show.name
end
