require 'active_record'
require 'pry'
require_relative 'lib/pokemon.rb'
require_relative 'lib/trainer.rb'



ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

poke = Pokemon.find(1)
trainer = Trainer.find(1)
binding.pry
