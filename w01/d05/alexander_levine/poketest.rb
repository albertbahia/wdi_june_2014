require 'pry'
require_relative 'pokemon'
require_relative 'trainer'
require_relative 'nurse'

pikachu = Pokemon.new("pikachu", 0, :electric, 100, 20, 20, 20)
bulbasaur = Pokemon.new("bulbasaur", 1, [:grass, :poison], 100, 20, 20, 15)
charmander = Pokemon.new("charmander", 2, :fire, 50, 25, 15, 15)
squirtle = Pokemon.new("squirtle", 3, :water, 0, 20, 20, 15)
pidgey = Pokemon.new("pidgey", 4, [:normal, :flying], 50, 15, 20, 25)
jigglypuff = Pokemon.new("jigglypuff", 5, [:normal, :fairy], 0, 5, 5, 5)
abra = Pokemon.new("abra", 6, :psycic, 100, 25, 20, 15)
dratini = Pokemon.new("dratini", 7, :dragon, 100, 15, 15, 15)

alex = Trainer.new("alex", 30, "new york",
[pikachu, bulbasaur, charmander, squirtle, pidgey])

jessie = Nurse.new("jessie", 31, "new york")

binding.pry
