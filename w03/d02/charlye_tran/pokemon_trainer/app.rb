require 'active_record'
require_relative '../pokemon_trainer/lib/trainer.rb'
require_relative '../pokemon_trainer/lib/pokemon.rb'
#require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})


def get_pokemon
  array = [1, 2, 3, 4, 5, 6]
  new_array = []
  new_array = array.map do
    Pokemon.all.shuffle.sample
  end
  return new_array.map { |x| x.name}
end

puts get_pokemon

#binding.pry
