require 'active_record'

class Trainer < ActiveRecord::Base
end

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })
