require 'pry'

require './pokemon.rb'
require './trainer.rb'
require './nurse.rb'

charizard = Pokemon.new("Charizard", 100, "Fire", 0, 30, 20, 10)
pikachu = Pokemon.new("Pikachu", 5, "Electricity", 0, 25, 10, 40)
squirtle = Pokemon.new("Squirtle", 50, "Water", 100, 40, 20, 60)
meowth = Pokemon.new("Meowth", 109, "Earth", 50, 90, 20, 10)
mew = Pokemon.new("Mew", 101, "Unknown", 80, 100, 120, 20)
evey = Pokemon.new("Evey", 10, "Earth", 10, 100, 20, 30)
staryu = Pokemon.new("Staryu", 9, "Water", 100, 30, 25, 50)
gyarados = Pokemon.new("Gyarados", 30, "Water", 100, 20, 50, 20)
psyduck = Pokemon.new("Psyduck", 20, "Water", 100, 30, 20, 30)

ash_pokemon = [charizard, pikachu, squirtle, meowth, mew]

ash = Trainer.new("Ash", 24, "Pallet Town", ash_pokemon)

joy = Nurse.new("Joy", 29, "Sunnytown")

binding.pry
