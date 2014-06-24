require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'world_cup_db',
  adapter: 'postgresql',
  host: 'localhost',
  user: 'gadigottlieb'
})

class Player < ActiveRecord::Base
end

binding.pry
