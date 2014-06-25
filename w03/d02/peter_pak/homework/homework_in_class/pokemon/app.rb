require 'active_record'
require 'pry'
require_relative 'lib/trainer.rb'
require_relative 'lib/pokemon.rb'

t1 = Trainer.find(1)
squirtle = Pokemon.find(7)
charmander = Pokemon.find(4)
bulbasaur = Pokemon.find(1)



binding.pry
