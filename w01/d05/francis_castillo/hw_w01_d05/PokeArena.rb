require_relative 'pokemon.rb'
require_relative 'nurse.rb'
require_relative 'trainer.rb'
require 'pry'


pokemon = [
  Pokemon.new("Picchu", 172, "electric", 75, "Fire", "Water", 10),
  Pokemon.new("Bulbasaur", 001, "electric", 60, "Fire", "Water", 10),
  Pokemon.new("Ivysaur", 002, "electric", 50, "Fire", "Water", 10),
  Pokemon.new("Venusaur", 003, "electric", 50, "Fire", "Water", 10),
  Pokemon.new("Charmander", 004, "electric", 0, "Fire", "Water", 10),
  Pokemon.new("Chareleon", 005, "electric", 0, "Fire", "Water", 10),
  Pokemon.new("Charizard", 006, "electric", 25, "Fire", "Water", 10),
  Pokemon.new("Squirtle", 007, "electric", 100, "Fire", "Water", 10)
]

frank = Trainer.new(
"Frank", 30, "NYC", pokemon[0..4])

leslie = Nurse.new("Leslie", 20, "tokyo")
leslie.heal_pokemon(frank,10)

binding.pry
