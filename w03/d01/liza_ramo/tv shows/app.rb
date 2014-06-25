
require 'active_record'

ActiveRecord::Base.establish_connection({
    database: 'shows_db',
    adapter: 'postgresql'
})

class Show < ActiveRecord::Base
end


# Get all shows
puts "\n"
puts '    ALL SHOWS:'
puts '------------------'
#all_shows = Show.all
Show.all.each do |show|
  puts show.name
end

# View shows in the Childrens genre
puts "\n"
puts '    SHOWS IN THE CHILDRENS GENRE:'
puts '-------------------------------------'
Show.where({genre: 'Childrens'}).each do |show|
  puts show.name
end


# Get all shows with rating == 9
puts "\n"
puts '    RATING 9 SHOWS:'
puts '-------------------------'
Show.where({ rating: 9 }).each do |show|
  puts show.name
end


# Get all shows airing now
puts "\n"
puts '     SHOWS AIRING NOW:'
puts '----------------------------'
Show.where({ airing: true }).each do |show|
  puts show.name
end




# Commands:
#
#
# Player.where({team: ‘USA’})
#
# Player.find_by({name: ‘Clint Dempsey’});
