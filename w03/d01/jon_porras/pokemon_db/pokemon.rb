require 'active_record'

class Pokemon < ActiveRecord::Base
end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
  })
