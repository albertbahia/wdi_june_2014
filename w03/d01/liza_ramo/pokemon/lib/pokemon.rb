require 'active_record'

class Pokemon < ActiveRecord::Base
end

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })
