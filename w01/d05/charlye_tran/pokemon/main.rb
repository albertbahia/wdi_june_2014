require 'pry'
require_relative 'nurse.rb'
require_relative 'image.rb'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'

# Instantiate 8 pokemon objects
# Two should have 0 hp
# Two should have 50 hp
# The other four can have any hp
# insert a binding.pry - check that your pokemon are created
#and you can utilize their instance methods

# call the method to list each objects info (trainers, pokemons, nurse) and print it to the console.

#Pokemon (name, id, poketype, hp, attack, defense, speed)
weedle = Pokemon.new("Weedle", 013, "bug", 50, "fire", "water", 25)
venusaur = Pokemon.new("Venusaur", 003, "dinosaur", 0, "poison", "grass", 10)
charmander = Pokemon.new("Charmander", 004, "dinosaur", 50, "fire", "water", 100)
charizard = Pokemon.new("Charizard", 006, "dinosaur", 0, "fire", "flying", 10)
teddiursa = Pokemon.new("Teddiursa", 216, "Pokemon", 25, "smile", "frown", 100)
mantine = Pokemon.new("Mantine", 226, "fish", 14, "water", "flying", 78)
torchic = Pokemon.new("Torchic", 255, "Pokemon", 100, "fire", "water", 99)
solrock = Pokemon.new("Solrock", 338, "rock", 2, "psychic", "sleep", 0)

# Instantiate a trainer object
# give the trainer 5 pokemon
# insert a binding.pry - check that your trainer has pokemon,
#that you can utilize their instance methods, try to add 2 more pokemon
#trainer: (name, age, hometown, pokemons)
charlye = Trainer.new("Charlye", 115, "Albany", ["Pikachu", "Cradily", "Anorith", "Feebas", "Lileep"])


# Instantiate a nurse object
# insert a binding.pry - check that you can utilize all of the nurses instance methods
#nurse: (name, age, town)
jake = Nurse.new("Jake", 3, "Petsville")

puts image()

jake.heal(weedle)
jake.heal(torchic)

binding.pry
