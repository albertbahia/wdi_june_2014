require 'active_record'
require 'pry'

#the following activerecord info calls a connection of our world cup db and asks it to be interepreted in postgresql language
ActiveRecord::Base.establish_connection({
  database: 'world_cup_db',
  adapter: 'postgresql'
  })

#normally the class info goes into a different <class>.rb file.  But not in this example for class illustration.

class Player < ActiveRecord::Base



end



binding.pry
