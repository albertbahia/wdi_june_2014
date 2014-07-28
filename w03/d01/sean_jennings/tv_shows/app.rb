require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'tv_shows',
  adapter: 'postgresql'
})

class Show < ActiveRecord::Base

end

Show.all.each do |show|
    puts show.name
  end
puts

puts "drama"
Show.where({genre: 'drama'}).each do |show|
    puts show.name
  end
puts

puts "rated a 9"
puts Show.where({ rating: 9 }).each do |show|
    puts show.name
  end
puts

puts "currently airing"
puts Show.where({ airing: true }).each do |show|
    puts show.name
  end
