require 'pry'

require_relative 'pokemon.rb'
require_relative 'trainer'
require_relative 'nurse.rb'

charmander = Pokemon.new("Charmander", 004, "fire", 39, 52, 43, 65)
pikachu = Pokemon.new("Pikachu", 025, "electric", 35, 55, 40, 50)
squirtle = Pokemon.new("Squirtle", 007, "water", 44, 48, 65, 50)
croconaw = Pokemon.new("Croconaw", 159, "water", 65, 80, 80, 59)
misdreavus = Pokemon.new("Misdreavus", 200, "ghost", 50, 60, 60, 85)
raikou = Pokemon.new("Raikou", 243, "electric", 50, 85, 75, 115)
gothita = Pokemon.new("Gothita", 574, "psychic", 0, 30, 50, 55)
klang = Pokemon.new("Klang", 600, "steel", 0, 80, 95, 70)

alexa = Trainer.new("Alexa", 27, "San Diego", [charmander, pikachu, squirtle, croconaw, misdreavus])

nurse_jon = Nurse.new("Jon", 18, "NYC")

binding.pry
