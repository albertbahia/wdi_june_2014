# * Write a Ruby application that will allow users to
#   * View all shows
#   * View shows of a genre
#   * View shows higher than a particular rating
#   * View shows that are airing
#   * BONUS
#   * Create a new show
#   * Get rid of a show
#   * Update the rating of a show
require 'active_record'

# Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
  })

# define the class
class Show < ActiveRecord::Base
end

puts "ALL SHOWS"
puts "-----------------"
Show.all.each do |show|
  puts show.name
end
puts "-----------------"
puts "DRAMA"
puts "-----------------"
Show.where({ genre: 'Drama' }).each do |show|
  puts show.name
end
puts "-----------------"
puts "Rating = 8"
puts "-----------------"
Show.where({ rating: 8 }).each do |show|
  puts show.name
end
puts "-----------------"
puts "CURRENTLY AIRING"
puts "-----------------"
Show.where({ airing: true }).each do |show|
  puts show.name
end
puts "-----------------"
