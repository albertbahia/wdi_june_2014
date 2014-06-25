require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
  })

class Show < ActiveRecord::Base
end

 # View all shows
 puts '    ALL SHOWS'
 puts '--------------------'
 Show.all.each do |show|
   puts show.name
 end
puts '--------------------'
 # View shows of a genre
 puts '    COMEDY SHOWS'
 puts '--------------------'
 Show.where( { genre: 'Comedy' } ).each do |show|
   puts show.name
 end
puts '--------------------'
 # View shows higher than a particular rating

 puts '    Rating 9 Shows'
 puts '--------------------'
 Show.where( { rating: 9 } ).each do |show|
   puts show.name
 end
 puts '--------------------'


 puts '    AIRING SHOWS'
 puts '--------------------'
 # View shows that are airing
 Show.where( { airing: true } ).each do |show|
   puts show.name
 end
 puts '--------------------'

 Show.where( { airing: true, rating: 9}).each do |show|
   puts show.name
 end
