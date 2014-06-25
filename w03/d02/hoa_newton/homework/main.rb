require_relative './pokemon/lib/pokemon.rb'
require_relative './pokemon/lib/pokemon_seed.rb'
require_relative './trainer/lib/trainer.rb'
require_relative './trainer/lib/trainer_seed.rb'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

t = Trainer.new
p = Pokemon.new

# binding.pry