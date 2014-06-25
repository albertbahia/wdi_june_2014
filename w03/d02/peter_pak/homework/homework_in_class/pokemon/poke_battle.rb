require 'pry'
require_relative 'lib/pokemon.rb'
require_relative 'lib/trainer.rb'

def fight_night(fighter1, fighter2)
  # map?
end

trainer1 = Trainer.order(random()).limit(1)
trainer2 = Trainer.order(random()).limit(1)

trainer1.choose_pokemon(Pokemon.get_pokemon)
trainer2.choose_pokemon(Pokemon.get_pokemon)


fight_night


binding.pry
