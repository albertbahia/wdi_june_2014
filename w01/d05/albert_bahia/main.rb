require 'pry'
require_relative './nurse.rb'
require_relative './pokemon.rb'
require_relative './trainer.rb'


# ---Instantiate pokemon, trainer, and nurse objects---

pokemons = [
  Pokemon.new("charizard", 6, "Fire", 0, 40, 30, 60),
  Pokemon.new("wartortle", 8, "Water", 0, 30, 40, 30),
  Pokemon.new("pikachu", 25, "Electric", 50, 30, 20, 60),
  Pokemon.new("sandslash", 28, "Ground", 50, 60, 60, 40),
  Pokemon.new("squirtle", 7, "Water", 70, 30, 30, 20),
  Pokemon.new("jigglypuff", 39, "Fairy", 70, 20, 10, 10),
  Pokemon.new("venusaur", 3, "Grass", 90, 40, 40, 40),
  Pokemon.new("machamp", 68, "Fighting", 100, 80, 40, 30)
]

binding.pry

trainer = Trainer.new("Ash", 28, "Kanto", pokemons[0,5])

binding.pry

nurse = Nurse.new("Misa", 25, "Los Angeles")

binding.pry

# ---End object instantiations---

exit

# Start main program

# loop do
#
#
#
#
#
#
#   exit
#
# end
