require_relative 'pokemon.rb'
require_relative 'nurse.rb'
require_relative 'trainer.rb'
require 'pry'
# pokemon = [
#   :picchu => Pokemon.new("Picchu", 172, "electric", 75, "Fire", "Water", 10),
#   :bulbasaur => Pokemon.new("Bulbasaur", 001, "electric", 60, "Fire", "Water", 10)
# ivysaur = Pokemon.new("Ivysaur", 002, "electric", 50, "Fire", "Water", 10)
# venusaur = Pokemon.new("Venusaur", 003, "electric", 50, "Fire", "Water", 10)
# charmander = Pokemon.new("Charmander", 004, "electric", 0, "Fire", "Water", 10)
# charmeleon = Pokemon.new("Chareleon", 005, "electric", 0, "Fire", "Water", 10)
# charizard = Pokemon.new("Charizard", 006, "electric", 25, "Fire", "Water", 10)
# squirtle = Pokemon.new("Squirtle", 007, "electric", 100, "Fire", "Water", 10)
# ]

pokemon = [
  :picchu => Pokemon.new("Picchu", 172, "electric", 75, "Fire", "Water", 10),
  :bulbasaur => Pokemon.new("Bulbasaur", 001, "electric", 60, "Fire", "Water", 10),
  :ivysaur =>Pokemon.new("Ivysaur", 002, "electric", 50, "Fire", "Water", 10),
  :venusaur => Pokemon.new("Venusaur", 003, "electric", 50, "Fire", "Water", 10),
  :charmander => Pokemon.new("Charmander", 004, "electric", 0, "Fire", "Water", 10),
  :charmeleon => Pokemon.new("Chareleon", 005, "electric", 0, "Fire", "Water", 10),
  :charizard => Pokemon.new("Charizard", 006, "electric", 25, "Fire", "Water", 10),
  :squirtle => Pokemon.new("Squirtle", 007, "electric", 100, "Fire", "Water", 10)
]

frank = Trainer.new("Frank", 30, "NYC", ["Picchu", "Squirtle"])

leslie = Nurse.new("Leslie", 20, "tokyo")



# puts me_t.pokemons.length
# puts me_t.list_trainers_pokemons

binding.pry
