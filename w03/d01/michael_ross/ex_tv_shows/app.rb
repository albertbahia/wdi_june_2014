require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql'
})
class Show < ActiveRecord::Base

end

# Get all shows
puts' All Shows '
puts'=================='
Show.all.each do |show|
  puts show.name
end
puts

# Get all Science Fiction shows
puts' SCI FI Shows'
puts'=================='
Show.where({ genre: 'Science Fiction' }).each do |show|
  puts show.name
end
puts


# Get all shows where rating == 9
puts'rating 9 shows'
puts'=================='
Show.where({ rating: 9 }).each do |show|
  puts show.name
end
puts

# All airing shows
puts'AIRING SHOWS'
puts'=================='
Show.where({ airing: true }).each do |show|
  puts show.name
end
puts
