require_relative 'pokemon.rb'
require_relative 'nurse.rb'
require_relative 'trainer.rb'
require 'pry'

me = Pokemon.new("Picchu", 123, "electric", 75, "Fire", "Water", 10)
me_t = Trainer.new("Frank", 30, "NYC", ["Picchu", "Squirtle"])

#me.heal_pokemon(10)

puts me_t.list_trainers_info

me_n = Nurse.new("rick", 20, "tokyo")

# puts me_t.pokemons.length
# puts me_t.list_trainers_pokemons

binding.pry
