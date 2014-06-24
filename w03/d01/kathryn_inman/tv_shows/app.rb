require "active_record"

ActiveRecord::Base.establish_connection({database: 'shows_db', adapter: 'postgresql'})

class Show < ActiveRecord::Base
end


puts "      ALL SHOWS"
puts "-"*30
Show.all.each do |show|
  puts show.name
end
puts "-"*30


puts "      A n i m e"
puts "-"*30
Show.where({genre: "Anime"}).each do |show|
  puts show.name
end
puts "-"*30


puts "      R a t e d  8"
puts "-"*30
Show.where({rating: 8}).each do |show|
  puts show.name
end
puts "-"*30


puts "      A c t i v e  S h o w s"
puts "-"*30
Show.where({airing: true}).each do |show|
  puts show.name
end
puts "-"*30
