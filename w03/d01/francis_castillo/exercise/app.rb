require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection ({
  database: 'shows_db',
  adapter: 'postgresql'
  })


class Show < ActiveRecord::Base
end

puts '      All Shows     '
puts '--------------------'
Show.all.each {|show| puts show.name}
puts

puts '      Hood Shows    '
puts '--------------------'
Show.where({genre: "Hood"}).each {
  |show| puts show.name
}
puts

puts '    Ratings 9 Shows '
puts '--------------------'
Show.where({rating: 9}).each {
  |show| puts show.name
}
puts

puts '    Airing Shows    '
puts '--------------------'
Show.where({ airing: true }).each {
  |show| puts show.name
}
binding.pry
