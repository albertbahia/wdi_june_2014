require 'active_record'
require 'pry'
require_relative 'models/trainer.rb'
require_relative 'models/pokemon.rb'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})
binding.pry


t1 = Trainer.find(1)
squirtle = Pokemon.find(7)
charmander = Pokemon.find(4)
bulbasaur = Pokemon.find(1)
