require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
  })

class Show < ActiveRecord::Base

end

Show.all.each do |show|
  puts show.name
end

puts

Show.where( { genre: "drama" } ).each do |show|
  puts show.name
end

puts

Show.where( { rating: 9 } ).each do |show|
  puts show.name
end

puts

Show.where( { airing: true } ).each do |show|
  puts show.name
end
