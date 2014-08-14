require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
    database: 'shows_db',
    adapter: 'postgresql'
})

class Show < ActiveRecord::Base
end

#Get shows
puts '  ALL SHOWS  '
puts '-------------'
Show.all.each do |show|
  puts show.name
end
puts

#Get drama shows
puts '  DRAMA SHOWS  '
puts '-------------'
Show.where({ genre: 'drama' }).each do |show|
  puts show.name
end
puts

#Get shows == 9
puts '  RATING 9 SHOWS  '
puts '-------------'
Show.where({ rating: 9 }).each do |show|
  puts show.name
end
puts

#Get airing shows
puts '  AIRING SHOWS  '
puts '-------------'
Show.where({ airing: true }).each do |show|
  puts show.name
end
puts
