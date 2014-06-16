require_related 'lib/pokemon.rb'
require_related 'lib/trainer.rb'
require_related 'lib/nurse.rb'

require('pry')

# --- Instantiate 8 pokemon
p1 = Pokemon.new("Pikachu", 1, :water, 0, 10, 10, 10)
p2 = Pokemon.new("Snurf", 2, :flying, 0, 10, 10, 10)
p3 = Pokemon.new("Herpaderp", 3, :rock, 50, 10, 10, 10)
p4 = Pokemon.new("Derpachu", 4, :grass, 50, 10, 10, 10)
p5 = Pokemon.new("Froaky", 5, :fairy, 10, 10, 10, 10)
p6 = Pokemon.new("Smilodon", 6, :psychic, 20, 10, 10, 10)
p7 = Pokemon.new("Boldor", 7, :fire, 30, 10, 10, 10)
p8 = Pokemon.new("Snuffulufagus", 8, :ghost, 100, 10, 10, 10)

binding.pry

# Instantiate a pokemon trainer
# hari = Trainer.new("Hari", 50, "The Streets", [p1, p2, p3, p4, p5])

# to add pokemon: use add_pokemon method from trainer.rb

# Instantiate a nurse object
# mckenneth = Nurse.new("McKenneth", 12, "NYC")

#check that you can utilize all of the instance methods
# mckenneth.name
# mckenneth.list_info
# mckenneth.heal_pokemon(hari)
