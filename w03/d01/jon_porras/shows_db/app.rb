require 'active_record'

ActiveRecord:: Base.establish_connection({
  database: 'shows_db',
  adapter: 'postgresql',
})

class Show < ActiveRecord::Base
end

puts 'All Shows:'
Show.all.each do |show|
  puts show.name
end

puts '--------------'

puts 'All Sitcoms:'
Show.where({ genre: 'sitcom' }).each do |show|
  puts show.name
end
puts '--------------'

puts 'All ratings at 7: '
Show.where({ rating: 7 }).each do |show|
  puts show.name
end
puts '--------------'

puts 'All shows that are airing:'
Show.where({ airing: true }).each do |show|
  puts show.name
end
puts '--------------'
