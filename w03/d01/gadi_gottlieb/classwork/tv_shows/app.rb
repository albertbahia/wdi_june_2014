require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})

class Show < ActiveRecord::Base
end

# Get all shows
puts '   ALL SHOWS    '
puts '----------------'
Show.all.each do |show|
  puts show.name
end
puts

# Get all Comedy Shows
puts '  Comedy Shows  '
puts '----------------'
Show.where({genre: 'Comedy'}).each do |show|
  puts show.name
end
puts

# Get all shows ==9
puts '  Rating 9 Shows  '
puts '----------------'
Show.where({rating:9}).each do |show|
  puts show.name
end
puts

#Get all airing shows
puts '  Airing Shows  '
puts '----------------'
Show.where({ airing: true } ).each do |show|
  puts show.name
end
puts
