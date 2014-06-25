require 'active_record'
#require 'pry'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons
end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

#binding.pry
