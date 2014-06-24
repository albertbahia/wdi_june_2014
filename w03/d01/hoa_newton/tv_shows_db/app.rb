require 'active_record'

#Connect to database
ActiveRecord::Base.establish_connection({
	database: 'tv_shows_db',
	adapter: 'postgresql'
	})

#Define the Show class
class Show < ActiveRecord::Base
end

#Get all tv_shows_db
puts ' ALL SHOWS'
Show.all.each do |show|
	puts show.name
end

#Get all drama shows 
puts ' DRAMA SHOWS'
puts Show.where({ genre: 'fantasy' })

#Get all shows with rating == 9
puts ' Rating 9 Shows'
puts Show.where({ rating: 9 })

#Get all airing shows
puts 'Airing shows'
puts Show.where({ airing: true })
