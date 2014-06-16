require 'pry'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'
require_relative 'nurse.rb'
require_relative 'pokeart.rb'



squirtle = Pokemon.new("Squirtle", "007", "Water", 100, 48, 65, 43)
pikachu = Pokemon.new("Pikachu", "025", "Electric", 0, 55, 40, 90)
charmander = Pokemon.new("Charmander", "004", "Fire", 74, 52, 43, 65)
fearow = Pokemon.new("Fearow", "022", "Normal/Flying", 0, 90, 65, 100)
psyduck = Pokemon.new("Psyduck", "054", "Water", 50, 52, 48, 55)
oddish = Pokemon.new("Oddish", "043", "Grass/Poison", 45, 50, 55, 30)
machoke = Pokemon.new("Machoke", "067", "Fighting", 80, 100, 70, 45)
articuno = Pokemon.new("Articuno", "144", "Ice/Flying", 50, 85, 100, 85)


gary = Trainer.new("Gary", "17", "Pallet Town",
[squirtle, charmander, fearow, machoke, oddish])

joy = Nurse.new("Joy", "23", "Celadon City")

art = Pokeart.new


binding.pry
