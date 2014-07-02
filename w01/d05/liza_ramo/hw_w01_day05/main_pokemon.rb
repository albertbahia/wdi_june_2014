require_relative './pokemon'
require_relative './trainer'
require_relative './nurse'
require('pry')

bulbasaur = Pokemon.new("Bulbasaur", 001, "Fuzzy", 0, 0, 5, 5, 5)
ivysaur = Pokemon.new("Ivysaur", 002, "Prickly", 0, 0, 5, 5, 5)
venusaur = Pokemon.new("Venusaur", 003, "Furry", 20, 20, 5, 5, 5)
charmander = Pokemon.new("Charmander", 004, "Poisonous", 30, 30, 5, 5, 5)
charmeleon = Pokemon.new("Charmeleon", 005, "Furry", 10, 10, 5, 5, 5)
charizard = Pokemon.new("Charizard", 006, "Curly", 50, 50, 5, 5, 5)
squirtle = Pokemon.new("Squirtle", 007, "Poisonous", 50, 50, 5, 5, 5)
pikachu = Pokemon.new("Pikachu", 025,"Fuzzy",20,20,2,5,5)


pokemon_list = [bulbasaur, ivysaur, venusaur, charmander, charmeleon, pikachu]

liza = Trainer.new("Liza", 26, "Asheville", [bulbasaur, ivysaur, venusaur])
binding.pry
