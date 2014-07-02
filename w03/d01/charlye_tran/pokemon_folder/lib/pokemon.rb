require 'active_record'

ActiveRecord::Base.establish_connection ({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers
end
